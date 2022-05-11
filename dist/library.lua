codes = {
	[100] = "Continue",
	[101] = "Switching Protocols",
	[103] = "Early Hints",
	[200] = "OK",
	[201] = "Created",
	[202] = "Accepted",
	[203] = "Non-Authoritative Information",
	[204] = "No Content",
	[205] = "Reset Content",
	[206] = "Partial Content",
	[300] = "Multiple Choices",
	[301] = "Moved Permanently",
	[302] = "Found",
	[303] = "See Other",
	[304] = "Not Modified",
	[307] = "Temporary Redirect",
	[308] = "Permanent Redirect",
	[400] = "Bad Request",
	[401] = "Unauthorized",
	[402] = "Payment Required",
	[403] = "Forbidden",
	[404] = "Not Found",
	[405] = "Method Not Allowed",
	[406] = "Not Acceptable",
	[407] = "Proxy Authentication Required",
	[408] = "Request Timeout",
	[409] = "Conflict",
	[410] = "Gone",
	[411] = "Length Required",
	[412] = "Precondition Failed",
	[413] = "Payload Too Large",
	[414] = "URI Too Long",
	[415] = "Unsupported Media Type",
	[416] = "Range Not Satisfiable",
	[417] = "Expectation Failed",
	[418] = "I'm a teapot",
	[422] = "Unprocessable Entity",
	[425] = "Too Early",
	[426] = "Upgrade Required",
	[428] = "Precondition Required",
	[429] = "Too Many Requests",
	[431] = "Request Header Fields Too Large",
	[451] = "Unavailable For Legal Reasons",
	[500] = "Internal Server Error",
	[501] = "Not Implemented",
	[502] = "Bad Gateway",
	[503] = "Service Unavailable",
	[504] = "Gateway Timeout",
	[505] = "HTTP Version Not Supported",
	[506] = "Variant Also Negotiates",
	[507] = "Insufficient Storage",
	[508] = "Loop Detected",
	[510] = "Not Extended",
	[511] = "Network Authentication Required",
}

--------------------------------------------------------------
----------- A class mimic to create class mimics -------------
--------------------------------------------------------------

-- Creates class mimics
---@param xTable table @ expands the default table
---@param xMeta table @ expands the default metatable
---@param Default boolean @ when set to true it overrides the default values of the table and metatable
---@return table
Class = {}

-- contains core class components
Class.Core = {}

-- contains table functions
Class.Core.Table = table

-- adds 2 tables together
---@param tX table @ The table you want to expand with the table given to ty
---@param ty table @ The table that will be added to the table given to tx
---@param override boolean @ when set to true any value of the ty table that has the same key as any value in the tx table will be overwritten by the ty table its value, default is false
---@return table
Class.Core.Table.Expand = function(tX, tY, override)
	for key, value in pairs(tY) do
		tX[key] = not override and (tX[key] or value) or value
	end
	return tX
end

-- Prints a table in a formatted way
---@param tbl table @ The table you want to print to the console
---@param indent number @ The table that will be added to the table given to tx
---@return string
Class.Core.Table.Print = function(tbl, indent)
	indent = indent or 0
	for k, v in pairs(tbl) do
		local tblType = type(v)
		local formatting = ("%s ^3%s:^0"):format(string.rep("  ", indent), k)
		if tblType == "table" then
			print(formatting)
			Class.Core.Table.Print(v, indent + 1)
		elseif tblType == 'boolean' then
			print(("%s^1 %s ^0"):format(formatting, v))
		elseif tblType == "function" then
			print(("%s^9 %s ^0"):format(formatting, v))
		elseif tblType == 'number' then
			print(("%s^5 %s ^0"):format(formatting, v))
		elseif tblType == 'string' then
			print(("%s ^2'%s' ^0"):format(formatting, v))
		else
			print(("%s^2 %s ^0"):format(formatting, v))
		end
	end
	return ''
end

-- contains string functions
Class.Core.String = string

-- Splits a string on the given character
Class.Core.String.Split = function(heystack, needle)
	local result = {}
	local from = 1
	local delim_from, delim_to = string.find(heystack, needle, from)
	while delim_from do
		result[#result+1] = string.sub(heystack, from, delim_from - 1)
		from = delim_to + 1
		delim_from, delim_to = string.find(heystack, needle, from)
	end
	result[#result+1] = string.sub(heystack, from)
	return result
end

-- let the index of the class point to itzelf
Class.__index = Class

-- creates a new class
Class.__call = function(self, xTable, xMeta, Default)

	-- make sure to set default value for the Default param
	Default = (Default ~= nil and type(Default) == 'boolean') and Default or false

	-- Build the returned table
	xTable = Class.Core.Table.Expand({}, (
		(xTable ~= nil and type(xTable) == 'table') and xTable or {}
	), Default)

	-- Build the returned metatable
	xMeta = Class.Core.Table.Expand({
		__index = xTable,
		__tostring = function(self)
			print('start of debug\n')
			return Class.Core.Table.Print(self, 0)..'\nend of debug'
		end,
		__metatable = nil
	}, (
		(xMeta ~= nil and type(xMeta) == 'table') and xMeta or {}
	), Default)

	return setmetatable(xTable, xMeta)

end

-- add the meta methods to the class function
Class = setmetatable({}, Class)

--------------------------------------------------------------
--------------------- Api Response Methods -------------------
--------------------------------------------------------------

Res = {}

function Res.new(res)

	return Class({
		res = res
	}, {
		__call = function(self, code, message, object)
			code = code or 500
			local data = { status = { code = code, disc = codes[code] } }
			if code >= 200 and code <= 299 then
				data.message = message or "no message provided"
				data.data = object or { warn = "no data provided" }
			end
			self.res.writeHead(code, {
				["Access-Control-Allow-Origin"] = "*",
				["Content-Type"] = "application/json"
			})
			self.res.send(json.encode(data))
		end
	}, false)

end

--------------------------------------------------------------
------------------- Api Parameters Methods -------------------
--------------------------------------------------------------

Parameter = {}

function Parameter.new()
	return Class({
		global = {}
	}, {
		__call = function(self, name, handler, bool)
			local param = self.global[name]
			if param == nil or (bool and param ~= nil) then
				self.global[name] = handler
			else
				error('the parameter you tried to create a handler for all ready exists', 0)
			end
		end
	}, false)
end

--------------------------------------------------------------
--------------------- Api Pathing Methods --------------------
--------------------------------------------------------------

Path = {}

function Path.new(method, path, handler)
	return Class({
		path = path,
		method = method,
		handler = handler
	}, {
		__call = function(self, p, r)
			return self.handler(p, r)
		end
	}, false)
end

--------------------------------------------------------------
--------------------- Api Routing Methods --------------------
--------------------------------------------------------------

Router = {}

function Router.new()
	return Class({
		paths = {}
	}, {
		__index = Router,
		__call = function(self, method, path, handler)
			self.paths[path] = Path.new(method, path, handler)
		end
	}, true)
end

function Router:handler(params, req, res)
	local Response = Res.new(res)
	local fullPath = string.sub(req.path, 2)
	local path = Class.Core.String.Split(fullPath, '?')
	local sub = self.paths[path[1]]
	if sub == nil then
		Response(501)
		return false
	end
	if req.method ~= sub.method then
		Response(501)
		return false
	end
	local prms = {}
	if path[2] ~= nil then
		local temp = Class.Core.String.split(path[2], '&')
		for k, v in pairs(temp) do
			local kv = Class.Core.String.split(v, '=')
			prms[kv[1]] = kv[2]
			table.remove(prms, 1)
		end
		for index, value in pairs(prms) do
			if params.global[index] ~= nil then
				prms[index] = params.global[index](value)
			end
		end
	end
	return self.paths[path[1]](prms, Response)
end

--------------------------------------------------------------
-------------------------- Main Class ------------------------
--------------------------------------------------------------

api = {}

function api.create()
	local _api = {}
	_api.route = Router.new()
	_api.param = Parameter.new()
	_api.call_response_handler = function(method, uri, status, response, headers)
		local rtv = { status = tonumber(status), success = false, data = {}, headers = headers }
		if rtv.status >= 200 and rtv.status < 300 then
			rtv.success = true
			rtv.data = json.decode(response)
		else
			print(('^8ERROR: api %s request to %s failed, recieved http status code %s^0'):format(method, uri, status))
		end
		return rtv
	end
	_api.fetch = function(uri, callback)
		PerformHttpRequest(uri, function(status, response, headers)
			local rtv = _api.call_response_handler('GET', uri, status, response, headers)
			if callback ~= nil then
				return callback(rtv.success, rtv.data, rtv.headers)
			else
				return rtv.success, rtv.data, rtv.headers
			end
		end, 'GET')
	end
	_api.post = function(uri, callback, data)
		PerformHttpRequest(uri, function(status, response, headers)
			local rtv = _api.call_response_handler('POST', uri, status, response, headers)
			if callback ~= nil then
				return callback(rtv.success, rtv.data, rtv.headers)
			else
				return rtv.success, rtv.data, rtv.headers
			end
		end, 'POST', json.encode(data), { ['Content-Type'] = 'application/json' })
	end
	return setmetatable(_api, {
		__index = api,
		SetHttpHandler(function(req, res) _api.route:handler(_api.param, req, res) end),
		__metatable = nil -- don't touch makes http handler invisible to the outside
	})
end