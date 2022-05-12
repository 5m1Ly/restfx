Fxs = Fxs or {}

Fxs.Config = Fxs.Config or {}

Fxs.Config.HTTP_STATUS_CODES = {
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

-- contains the Fxs core components
Fxs.Core = Fxs.Core or {}

--------------------------------------------------------------
------------------- Fxs Table Methods --------------------
--------------------------------------------------------------

-- contains table functions
Fxs.Core.Table = table

-- adds 2 tables together
---@param tX table @ The table you want to expand with the table given to tY
---@param tY table @ The table that will be added to the table given to tX
---@param override boolean @ when set to true any value of the tY table that has the same key as any value in the tx table will be overwritten by the tY table its value, default is false
---@return table
Fxs.Core.Table.Expand = function(tX, tY, override)
	for key, value in pairs(tY) do
		tX[key] = not override and (tX[key] or value) or value
	end
	return tX
end

-- Prints a table in a formatted way
---@param tbl table @ The table you want to print to the console
---@param indent number @ The amount of tabs in front of a property
---@return string
Fxs.Core.Table.Print = function(tbl, indent)
	indent = indent or 0
	for k, v in pairs(tbl) do
		local tblType = type(v)
		local formatting = ("%s ^3%s:^0"):format(string.rep("  ", indent), k)
		if tblType == "table" then
			print(formatting)
			Fxs.Core.Table.Print(v, indent + 1)
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

--------------------------------------------------------------
------------------ Fxs String Methods --------------------
--------------------------------------------------------------

-- contains string functions
Fxs.Core.String = string

-- Splits a string on the given character
Fxs.Core.String.Split = function(heystack, needle)
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

--------------------------------------------------------------
----------- A class mimic to create class mimics -------------
--------------------------------------------------------------

-- Creates class mimics
---@param xTable table @ expands the default table
---@param xMeta table @ expands the default metatable
---@param Default boolean @ when set to true it overrides the default values of the table and metatable
---@return table
Fxs.Core.Class = {}

-- let the index of the class point to itzelf
Fxs.Core.Class.__index = Class

-- creates a new class
Fxs.Core.Class.__call = function(self, xTable, xMeta, Default)

	-- make sure to set default value for the Default param
	Default = (Default ~= nil and type(Default) == 'boolean') and Default or false

	-- Build the returned table
	xTable = Fxs.Core.Table.Expand({}, (
		(xTable ~= nil and type(xTable) == 'table') and xTable or {}
	), Default)

	-- Build the returned metatable
	xMeta = Fxs.Core.Table.Expand({
		__index = xTable,
		__tostring = function(self)
			print('start of debug\n')
			return Fxs.Core.Table.Print(self, 0)..'\nend of debug'
		end,
		__metatable = nil
	}, (
		(xMeta ~= nil and ((type(xMeta) == 'table' and xMeta) or (type(xMeta) == 'function' and { __call = xMeta })) or {})
	), Default)

	return setmetatable(xTable, xMeta)

end

-- add the meta methods to the class function
Fxs.Core.Class = setmetatable({}, Fxs.Core.Class)


--------------------------------------------------------------
---------------------- Rest API Response ---------------------
--------------------------------------------------------------

Fxs.Rest = {}

Fxs.Rest.Methods = {}

Fxs.Rest.Methods.Response = function(response)
	return Fxs.Core.Class({ response = response }, function(self, code, message, object)
		code = code or 500
		local data = {
			status = {
				code = code,
				disc = Fxs.Config.HTTP_STATUS_CODES[code]
			}
		}
		if code >= 200 and code <= 299 then
			data.message = message or "no message provided"
			data.data = object or { warn = "no data provided" }
		end
		self.response.writeHead(code, {
			["Access-Control-Allow-Origin"] = "*",
			["Content-Type"] = "application/json"
		})
		self.response.send(json.encode(data))
	end)
end

Fxs.Rest.Methods.Parameter = function()
	return Fxs.Core.Class({
		global = {}
	}, function(self, name, handler, bool)
		local param = self.global[name]
		if param == nil or (bool and param ~= nil) then
			self.global[name] = handler
		else
			error('the parameter you tried to create a handler for all ready exists', 0)
		end
	end)
end

Fxs.Rest.Methods.Path = function(method, path, handler)
	return Fxs.Core.Class({
		path = path,
		method = method,
		handler = handler
	}, function(self, p, r)
		return self.handler(p, r)
	end)
end

Fxs.Rest.Methods.Router = function()

	local temp_router = {
		paths = {}
	}

	function temp_router:handler(params, request, response)
		local Response = Fxs.Rest.Methods.Response(response)
		local fullPath = string.sub(request.path, 2)
		local path = Fxs.Core.String.Split(fullPath, '?')
		local sub = self.paths[path[1]]
		if sub == nil then
			Response(501)
			return false
		end
		if request.method ~= sub.method then
			Response(501)
			return false
		end
		local prms = {}
		if path[2] ~= nil then
			local temp = Fxs.Core.String.Split(path[2], '&')
			for k, v in pairs(temp) do
				local kv = Fxs.Core.String.Split(v, '=')
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

	return Fxs.Core.Class(temp_router, function(self, method, path, handler)
		self.paths[path] = Fxs.Rest.Methods.Path(method, path, handler)
	end)

end

Fxs.Rest.Methods.ResponseHandler = function(method, uri, status, response, headers)
	local rtv = { status = tonumber(status), success = false, data = {}, headers = headers }
	if rtv.status >= 200 and rtv.status < 300 then
		rtv.success = true
		rtv.data = json.decode(response)
	else
		print(('^8ERROR: api %s request to %s failed, recieved http status code %s^0'):format(method, uri, status))
	end
	return rtv
end

Fxs.Rest.Methods.Fetch = function(uri, callback)
	PerformHttpRequest(uri, function(status, response, headers)
		local rtv = Fxs.Rest.Methods.ResponseHandler('GET', uri, status, response, headers)
		if callback ~= nil then
			return callback(rtv.success, rtv.data, rtv.headers)
		else
			return rtv.success, rtv.data, rtv.headers
		end
	end, 'GET')
end

Fxs.Rest.Methods.Post = function(uri, callback, data)
	PerformHttpRequest(uri, function(status, response, headers)
		local rtv = Fxs.Rest.Methods.ResponseHandler('POST', uri, status, response, headers)
		if callback ~= nil then
			return callback(rtv.success, rtv.data, rtv.headers)
		else
			return rtv.success, rtv.data, rtv.headers
		end
	end, 'POST', json.encode(data), { ['Content-Type'] = 'application/json' })
end

Fxs.Rest.Build = {}

Fxs.Rest.Build = Fxs.Core.Class({}, function()
	local NewApiBuild = {}
	NewApiBuild.Route = Fxs.Rest.Methods.Router()
	NewApiBuild.Param = Fxs.Rest.Methods.Parameter()
	NewApiBuild.ResponseHandler = Fxs.Rest.Methods.ResponseHandler
	NewApiBuild.Fetch = function(uri, callback)
		PerformHttpRequest(uri, function(status, response, headers)
			local rtv = NewApiBuild.ResponseHandler('GET', uri, status, response, headers)
			if callback ~= nil then
				return callback(rtv.success, rtv.data, rtv.headers)
			else
				return rtv.success, rtv.data, rtv.headers
			end
		end, 'GET')
	end
	NewApiBuild.Post = function(uri, callback, data)
		PerformHttpRequest(uri, function(status, response, headers)
			local rtv = NewApiBuild.ResponseHandler('POST', uri, status, response, headers)
			if callback ~= nil then
				return callback(rtv.success, rtv.data, rtv.headers)
			else
				return rtv.success, rtv.data, rtv.headers
			end
		end, 'POST', json.encode(data), { ['Content-Type'] = 'application/json' })
	end
	return setmetatable(NewApiBuild, {
		__index = Fxs.Rest.Build,
		SetHttpHandler(function(req, res) NewApiBuild.Route:handler(NewApiBuild.Param, req, res) end),
		__metatable = nil -- don't touch makes http handler invisible to the outside
	})
end)