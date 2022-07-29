--[[ =========================================== CORE MECHANICS OF THE LIBRARY ========================================= ]]

-- holds all the methods of the RestFX Client
local RestFX = {
	Config = Config,
	Calls = {}
}

--- does the error handling
---@param l number error catch level
---@param c boolean condition
---@param e string error reference
---@param m string error message
local function catch(l, c, e, m)
	if l <= RestFX.Config.ErrorLevel then
		if c then
			print('^1['..(e or 'global')..':error]^0 '..m)
			return true
		end
	end
	return false
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
	for i = 1, #RestFX.Config.Methods do
		local Method = RestFX.Config.Methods[i]
		if Method.name == method then
			allowed = not Method.allowed
			break
		end
	end
	return allowed
end

--- registers a handler for a specified incomming http request
---@param obj table contains response data
local function ValidateResponseBody(obj, msg)
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
local function SendResponse(obj, response, code, ...)

	obj.code = code or obj.code
	obj = ValidateResponseBody(obj)

	local codes = RestFX.Config.StatusCodes
	local labels = RestFX.Config.PrintLabels

	if obj.type or next({...}) ~= nil then

		local status = codes[obj.code]

		if status == nil or (status.code == nil or status.status == nil or status.msg == nil) then
			status = codes[1]
		end

		obj.code = status.code
		obj.body = { ErrorMessage = status.msg }
		obj.status = status.status

		obj.message = obj.type and status.msg..obj.type or (status.msg):format(...)

	end

	print(('%s%s'):format(labels.status, obj.status))

	if obj.code >= 300 then
		print(('%s%s'):format(labels.error, obj.message))
	end

	response.writeHead(obj.code, obj.head)

	if obj.body then

		response.send(json.encode(obj.body))

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
		SendResponse(call.res, response, 6, call.req.path.base)
		return
	end

	-- get the registered call
	local call_data = RestFX.Calls[call.req.path.base]

	call.req.path.registered = call_data.path.full

	-- check if the incomming request method is the one set for the registerd call
	if call_data.method ~= call.req.method then
		SendResponse(call.res, response, 4, call.req.method, call_data.method)
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
		call.req.body = json.decode(data)
	end)

	-- trigger the registered scallback 
	call.res = call_data.fn(call.req, call.res)

	-- check to ensure that the request body is created
	if call.res == nil then
		SendResponse({head={
			["Access-Control-Allow-Origin"] = "*",
			["Content-Type"] = "application/json"
		}}, response, 3, call.req.method)
		return
	end

	-- set a the response to the client
	SendResponse(call.res, response)

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
RestFX.PrettyDebug = PrettyDebug
exports('PrettyDebug', PrettyDebug)

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

	print(('^2registered ^5%s^2 request \'^5/%s^2\' (call uri: ^5%s%s%s/^2)^0'):format(
		object.method,
		bpath,
		RestFX.Config.ServerURI,
		GetCurrentResourceName(),
		path
	))

end
RestFX.RegisterRequest = RegisterRequest
exports('RegisterRequest', RegisterRequest)

-- returns the restfx library
exports('GetLibrary', function() return RestFX end)

--[[ =============================================== OLD CODE FOR REFRENCE ============================================= ]]

-- RestFX = {}
-- local function Fetch(uri, callback)
-- 	PerformHttpRequest(uri, function(status, response, headers)
-- 		local rtv = ResHandler('GET', uri, status, response, headers)
-- 		if callback ~= nil then
-- 			return callback(rtv.success, rtv.data, rtv.headers)
-- 		else
-- 			return rtv.success, rtv.data, rtv.headers
-- 		end
-- 	end, 'GET', nil, { ['Accept'] = 'application/vnd.github.v3+json' })
-- end
-- RestFX.Fetch = Fetch
-- local function Post(uri, callback, data)
-- 	PerformHttpRequest(uri, function(status, response, headers)
-- 		local rtv = ResHandler('POST', uri, status, response, headers)
-- 		if callback ~= nil then
-- 			return callback(rtv.success, rtv.data, rtv.headers)
-- 		else
-- 			return rtv.success, rtv.data, rtv.headers
-- 		end
-- 	end, 'POST', json.encode(data), { ['Content-Type'] = 'application/json' })
-- end
-- RestFX.Post = Post
-- local function GitHubVersionCheck(repo_owner, repo_name, repo_version)
-- 	local REQUEST_URI = ('https://api.github.com/repos/%s/%s/releases/latest'):format(repo_owner, repo_name)
-- 	-- check version of resource
-- 	RestFX.Fetch(REQUEST_URI, function(success, response, headers)
-- 		local str = ''
-- 		if success then
-- 			local latest_version = string.gmatch(response.name, "%d.%d.%d")()
-- 			str = str .. ('^5version: ^3%s'):format(latest_version, repo_version)
-- 			if latest_version == repo_version then
-- 				str = str .. '\n^2SUCC: everything is up to date...'
-- 			else
-- 				str = str .. ('\n^8WARN: your version of the %s is not up to date. you can download the latest version from the link below.'):format(repo_name)
-- 				str = str .. ('\n^3DOWNLOAD: ^5%s'):format(response.html_url)
-- 			end
-- 		else
-- 			str = str .. '\n^3WARN: could not verify the version of your resource...'
-- 		end
-- 		str = str .. '\n^2SUCC: resource is up and running...\n^9Created by ^8Sm1Ly^9 for servers build with the ^8CitizenFX Framework^9!^0'
-- 		print(str)
-- 	end)
-- end
-- RestFX.GHvCheck = GitHubVersionCheck
-- local function BuiltRestApi()
-- 	local rest = {
-- 		route = Router(),
-- 		param = Parameter(),
-- 		responseHandler = ResHandler,
-- 		fetch = Fetch,
-- 		post = Post,
-- 	}
-- 	return setmetatable(rest, {
-- 		SetHttpHandler(function(req, res) rest.route:handler(rest.param, req, res) end),
-- 		__metatable = nil
-- 	})
-- end
-- RestFX.Built = BuiltRestApi
-- --[[ ====================================== CHECK FOR UPDATES ====================================== ]]
-- -- Get current resource name
-- local resource_name = 'restfx' -- GetCurrentResourceName()
-- -- Check resource version
-- RestFX.GHvCheck('5m1Ly', resource_name, GetResourceMetadata(GetCurrentResourceName() --[[resource_name]], "version"))