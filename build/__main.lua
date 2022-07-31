--[[ =========================================== CORE MECHANICS OF THE LIBRARY ========================================= ]]

-- holds all the methods of the RestFX Client
local RestFX = {
	Calls = {}, -- registered http request paths
	exp = {} -- exported and exposed data / methods
}

--- does the error handling
---@param l number error catch level
---@param c boolean condition
---@param e string error reference
---@param m string error message
local function catch(l, c, e, m)
	if l <= Config.ErrorLevel then
		if c then
			print('^1['..(e or 'global')..':error]^0 '..m)
			return true
		end
	end
	return false
end

--- does the error handling
---@param str_x string string to hash and compare with str_x
---@param str_y string string to hash and compare with str_y
local function Sha256CheckSum(str_x, str_y)
	local hash = sha256
	local x_hash = hash(str_x)
	local y_hash = hash(str_y)
	return x_hash == y_hash
end

--- checks if the given parameters meet the specified conditions
---@param params string table with parameters to validate
local function ParameterValidation(params)
	local e = 'parameter'
	local msg = 'parameter %s recieved value %s which isnt allowed. expacted value %s'
	for i = 1, #params do
		local p = params[i]
		local t = type(p.value) 
		local c = false
		if not p.null and p.value == nil then
			c = true
		elseif p.type ~= t then
			if p.type == 'function' and (t == 'table' and p.value.__cfx_functionReference == nil) then
				c = true
			end
		end
		local m = msg:format(p.name, t, p.type)
		if catch(1, c, e, m) then
			return true
		end
	end
	return false
end

--- checks if the given method is allowed or not
---@param method string the method that needs to be checked
local function IsMethodAllowed(method)
	method = method:upper()
	local allowed = false
	for i = 1, #Config.Methods do
		local Method = Config.Methods[i]
		if Method.name == method then
			allowed = not Method.allowed
			break
		end
	end
	return allowed
end

--- registers a handler for a specified incomming http request
---@param obj table contains response data
local function ValidateResponseBody(obj)
	if obj.code >= 200 and obj.code <= 299 then
		local _type = type(obj.body)
		if _type ~= 'nil' then
			if _type ~= 'function' and _type ~= 'thread' then
				if _type ~= 'table' then
					obj.body = { ['response-'.._type] = obj.body }
				else
					obj.body = next(obj.body) ~= nil and obj.body or nil
				end
			else
				obj.code = 5
				obj.type = _type
			end
		else
			obj.body = {}
		end
	end
	return obj
end

--- registers a handler for a specified incomming http request
---@param obj table contains response data 
---@param response table contains methods to send a response
---@param code number the status code (overides the one that is currently in obj.code)
---@param msg string error message send when status code is above or equal to 300
local function SendResponse(call, response, code, ...)
	call.res.code = code or call.res.code
	call.res = ValidateResponseBody(call.res)
	local codes = Config.StatusCodes
	local labels = Config.PrintLabels
	if call.res.type or next({...}) ~= nil or call.res.code == 2 then
		local status = codes[call.res.code] or codes[1]
		call.res.code = status.code
		call.res.status = status.status
		if status.msg ~= nil then
			call.res.body = { ErrorMessage = status.msg }
			call.res.message = call.res.type and status.msg..call.res.type or (status.msg):format(...)
		end
	end
	print(('%sclient: ^3%s^0, request: ^2%s^0, method: ^5%s^0, status: ^5%s^0'):format(
		labels.status, call.req.address, call.req.path.full, call.req.method, call.res.status
	))
	if call.res.code >= 300 then
		print(('%s%s'):format(labels.error, call.res.message))
	end
	response.writeHead(call.res.code, call.res.head)
	if call.res.body then
		response.send(json.encode(call.res.body))
	else
		response.send()
	end
end

--- handles incomming http requests
---@param request table contains all the request data
---@param response table contains all the required methods to send a response
local function RequestHandler(request, response)
	local call = {
		req = {
			path = {
				full = request.path
			},
			method = request.method,
			address = request.address,
			head = request.headers
		},
		res = {
			code = 2,
			head = {
				["Access-Control-Allow-Origin"] = "*",
				["Content-Type"] = "application/json"
			},
			body = {}
		}
	}
	-- set the base path and given parameters
	call.req.temp = string.split(call.req.path.full, '/')
	call.req.path.base = table.remove(call.req.temp, 1)
	-- check if call is registered
	if RestFX.Calls[call.req.path.base] == nil then
		SendResponse(call, response, 6, call.req.path.base)
		return
	end
	-- get the registered call
	local call_data = RestFX.Calls[call.req.path.base]
	call.req.path.registered = call_data.path.full
	-- check if the incomming request method is the one set for the registerd call
	if call_data.method ~= call.req.method then
		SendResponse(call, response, 4, call.req.method, call_data.method)
		return
	end
	-- register the param values to the correct place in the request data table
	if call_data.params ~= nil then
		for index, temp_key in next, call_data.params do
			call.req.params = call.req.params or {}
			call.req.params[index] = call.req.temp[temp_key]
		end
	end
	call.req.temp = nil
	-- decode request body (methods with request body: POST, PUT, DELETE, OPTIONS, PATCH)
	request.setDataHandler(function(data)
		call.req.jsonbody = data
		call.req.body = json.decode(call.req.jsonbody)
	end)
	-- trigger the registered scallback 
	call.res = call_data.fn(call.req, call.res)
	-- check to ensure that the request body is created
	if call.res == nil then
		call.res = { head = {
			["Access-Control-Allow-Origin"] = "*",
			["Content-Type"] = "application/json"
		} }
		SendResponse(call, response, 3, call.req.method)
		return
	end
	-- send response to the client
	SendResponse(call, response)
end
SetHttpHandler(RequestHandler)

--[[ ===================================== EXPORTED / EXPOSED METHODS OF THE LIBRARY =================================== ]]

--- does the error handling
---@param value any the value you want to debug
---@param index string reference of the value you want to print
local function PrettyDebug(value, index)
	value = type(value) == 'table' and ' = {\n'..string.tableToString(value, 1) or ' = ^3'..tostring(value)..'^0'
	index = index or '^9UNREFERENCED^0'
	print('^2$$$$$$$$$$$$$$$$$$ ^5START OF DEBUG ^2$$$$$$$$$$$$$$$$$$^0')
	print('^2$^0')
	print('^2$^0 '..index..value)
	print('^2$^0')
	print('^2$$$$$$$$$$$$$$$$$$$ ^5END OF DEBUG ^2$$$$$$$$$$$$$$$$$$$^0')
end
RestFX.exp.PrettyDebug = PrettyDebug

--- registers a handler for a specified incomming http request
---@param path string
---@param fn function
---@param method string
---@param header table
local function RegisterRequest(path, fn, method, header)
	-- check if the given parameters are valid
	if ParameterValidation({
		{ name = 'path',   value = path,   type = 'string',   null = false },
		{ name = 'fn',     value = fn,     type = 'function', null = false },
		{ name = 'method', value = method, type = 'string',   null = false },
		{ name = 'header', value = header, type = 'table',    null = true  },
	}) then return end
	-- check if the given method are valid
	if catch(
		1, IsMethodAllowed(method), 'method', 
		'The given HTTP request method \''..method..'\' isnt allowed for usage!! change the configuration to enable it. (file: \'restfx/.ini/config.lua\', var: \'Config.Methods\')'
	) then return end
	-- break down the full given path into chunks
	local params = string.split(path, '/')
	local bpath = table.remove(params, 1)
	-- create an object containing the call data
	local object = {
		method = method:upper(),
		fn = fn,
		head = header,
		path = {
			full = path,
			base = bpath
		}
	}
	-- register params to the call data if set
	for i = 1, #params do
		local param = params[i]:gsub(':', '')
		object.params = object.params or {}
		object.params[param] = i
	end
	-- register the call data to use later on
	RestFX.Calls[bpath] = object
	-- print registered request path to the server console
	print(('^2registered ^5%s^2 request \'^5/%s^2\' (uri: ^5%s%s%s^2)^0'):format(
		object.method,
		bpath,
		Config.uris.server,
		GetCurrentResourceName(),
		path
	))
end
RestFX.exp.RegisterRequest = RegisterRequest

--- registers a handler for a specified incomming http request
---@param uri string the url that needs to be called
---@param req table a table containing the request header body and method
---@param cb function a callback triggerd after the call is made
local function TriggerRequest(uri, req, cb)
	local request = {
		method = req.method,
		head = {
			['Accept'] = 'application/vnd.github.v3+json'
		}
	}
	if req.head ~= nil then
		for key, value in next, req.head do
			request.head[key] = value
		end
	end
	if req.head ~= nil then
		for key, value in next, req.body do
			request.body = request.body or {}
			request.body[key] = value
		end
	end
	PerformHttpRequest(uri, function(status, body, head)
		cb(json.decode(body), head, status)
	end, request.method, request.body, request.head)
end
RestFX.exp.TriggerRequest = TriggerRequest

--- registers a handler for a specified incomming http request
---@param owner string the owner of the repository
---@param repo string the name of the repository
---@param version string a version of the repository
local function CheckRepoVersion(owner, repo, version)
	local request_uri = Config.uris.git
	request_uri = request_uri:gsub('{owner}', owner)
	request_uri = request_uri:gsub('{repo}', repo)
	RestFX.exp.TriggerRequest(request_uri, {}, function(result, head, status)
		local str = ''
		if result then
			if Sha256CheckSum(result.name, version) then
				str = str..'^2success^0: everything is up to date...'
			else
				str = str..('^3warning^0: ^5%s^0 is not up to date. download the latest version from ^5%s^0'):format(repo, result.html_url)
			end
		else
			str = str..'\n^3warning^0: could not verify the version of your resource...'
		end
		str = str..'\n^2success^0: resource is up and running...'
		str = str..('\n^5version^0:\n- ^4%s^0 (current)\n- ^2%s^0 (latest)'):format(version, result.name)
		print(str)
	end)
end
RestFX.exp.CheckRepoVersion = CheckRepoVersion

-- returns the restfx library
local function GetLibrary()
	local exp = RestFX.exp
	exp.GetLibrary = nil
	return exp
end
RestFX.exp.GetLibrary = GetLibrary

-- create exports
for fn_name, fn in next, RestFX.exp do
	exports(fn_name, fn)
end

-- verify resource version
local repo = GetCurrentResourceName()
local version = GetResourceMetadata(repo, "version")
CheckRepoVersion('5m1Ly', repo, version)