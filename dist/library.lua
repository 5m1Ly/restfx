Fsx = Fsx or {}

Fsx.Config = Fsx.Config or {}

Fsx.Config.HTTP_STATUS_CODES = {
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

-- contains the Fsx core components
Fsx.Core = Fsx.Core or {}

--------------------------------------------------------------
------------------- Fsx Table Methods --------------------
--------------------------------------------------------------

-- contains table functions
Fsx.Core.Table = table

-- adds 2 tables together
---@param tX table @ The table you want to expand with the table given to tY
---@param tY table @ The table that will be added to the table given to tX
---@param override boolean @ when set to true any value of the tY table that has the same key as any value in the tx table will be overwritten by the tY table its value, default is false
---@return table
Fsx.Core.Table.Expand = function(tX, tY, override)
	for key, value in pairs(tY) do
		tX[key] = not override and (tX[key] or value) or value
	end
	return tX
end

-- Prints a table in a formatted way
---@param tbl table @ The table you want to print to the console
---@param indent number @ The amount of tabs in front of a property
---@return string
Fsx.Core.Table.Print = function(tbl, indent)
	indent = indent or 0
	for k, v in pairs(tbl) do
		local tblType = type(v)
		local formatting = ("%s ^3%s:^0"):format(string.rep("  ", indent), k)
		if tblType == "table" then
			print(formatting)
			Fsx.Core.Table.Print(v, indent + 1)
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
------------------ Fsx String Methods --------------------
--------------------------------------------------------------

-- contains string functions
Fsx.Core.String = string

-- Splits a string on the given character
Fsx.Core.String.Split = function(heystack, needle)
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

Fsx.Core.String.Guid = function(length)
	length = length or 64
	local char = math.random(1, 2) == 2 and (math.random(1, 2) == 2 and math.random(65,  90) or math.random(48,  57)) or math.random(97, 122)
	return length <= 0 and '' or Fsx.Core.String.char(char) .. Fsx.Core.String.Guid(length - 1)
end

--------------------------------------------------------------
----------- A class mimic to create class mimics -------------
--------------------------------------------------------------

-- Creates class mimics
---@param xTable table @ expands the default table
---@param xMeta table @ expands the default metatable
---@param Default boolean @ when set to true it overrides the default values of the table and metatable
---@return table
Fsx.Core.Class = {}

-- let the index of the class point to itzelf
Fsx.Core.Class.__index = Fsx.Core.Class

-- creates a new class
Fsx.Core.Class.__call = function(self, xTable, xMeta, Default)

	-- make sure to set default value for the Default param
	Default = (Default ~= nil and type(Default) == 'boolean') and Default or false

	-- Build the returned table
	xTable = Fsx.Core.Table.Expand({}, (
		(xTable ~= nil and type(xTable) == 'table') and xTable or {}
	), Default)

	-- Build the returned metatable
	xMeta = Fsx.Core.Table.Expand({
		__index = xTable,
		__tostring = function(self)
			print('start of debug\n')
			return Fsx.Core.Table.Print(self, 0)..'\nend of debug'
		end,
		__metatable = nil
	}, (
		(xMeta ~= nil and ((type(xMeta) == 'table' and xMeta) or (type(xMeta) == 'function' and { __call = xMeta })) or {})
	), Default)

	return setmetatable(xTable, xMeta)

end

-- add the meta methods to the class function
Fsx.Core.Class = setmetatable({}, Fsx.Core.Class)

--------------------------------------------------------------
----------------------- Rest API Builder ---------------------
--------------------------------------------------------------

--todo: change the spaghet below

Fsx.Rest = {}

Fsx.Rest.Methods = {}

Fsx.Rest.Methods.Response = function(response)
	return Fsx.Core.Class({ response = response }, function(self, code, message, object)
		code = code or 500
		local data = {
			status = {
				code = code,
				disc = Fsx.Config.HTTP_STATUS_CODES[code]
			}
		}
		if code >= 200 and code <= 299 then
			data.message = message
			data.data = object
		end
		self.response.writeHead(code, {
			["Access-Control-Allow-Origin"] = "*",
			["Content-Type"] = "application/json"
		})
		self.response.send(json.encode(data))
	end)
end

Fsx.Rest.Methods.Parameter = function()
	return Fsx.Core.Class({
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

Fsx.Rest.Methods.Path = function(method, path, handler)
	return Fsx.Core.Class({
		path = path,
		method = method,
		handler = handler
	}, function(self, p, r)
		return self.handler(p, r)
	end)
end

Fsx.Rest.Methods.Router = function()

	local temp_router = {
		paths = {}
	}

	function temp_router:handler(params, request, response)
		local Response = Fsx.Rest.Methods.Response(response)
		local fullPath = string.sub(request.path, 2)
		local path = Fsx.Core.String.Split(fullPath, '?')
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
			local temp = Fsx.Core.String.Split(path[2], '&')
			for k, v in pairs(temp) do
				local kv = Fsx.Core.String.Split(v, '=')
				prms[kv[1]] = kv[2] or true
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

	return Fsx.Core.Class(temp_router, function(self, method, path, handler)
		self.paths[path] = Fsx.Rest.Methods.Path(method, path, handler)
	end)

end

Fsx.Rest.Methods.ResponseHandler = function(method, uri, status, response, headers)
	local rtv = { status = tonumber(status), success = false, data = {}, headers = headers }
	if rtv.status >= 200 and rtv.status < 300 then
		rtv.success = true
		rtv.data = json.decode(response)
	else
		print('^8ERROR:ERINFO: Rest api request failed')
		print(('^8ERROR:METHOD: %s'):format(method))
		print(('^8ERROR:REQURI: %s'):format(uri))
		print(('^8ERROR:STCODE: %s^0'):format(status))
	end
	return rtv
end

Fsx.Rest.Methods.Fetch = function(uri, callback)
	PerformHttpRequest(uri, function(status, response, headers)
		local rtv = Fsx.Rest.Methods.ResponseHandler('GET', uri, status, response, headers)
		if callback ~= nil then
			return callback(rtv.success, rtv.data, rtv.headers)
		else
			return rtv.success, rtv.data, rtv.headers
		end
	end, 'GET', nil, { ['Accept'] = 'application/vnd.github.v3+json' })
end

Fsx.Rest.Methods.Post = function(uri, callback, data)
	PerformHttpRequest(uri, function(status, response, headers)
		local rtv = Fsx.Rest.Methods.ResponseHandler('POST', uri, status, response, headers)
		if callback ~= nil then
			return callback(rtv.success, rtv.data, rtv.headers)
		else
			return rtv.success, rtv.data, rtv.headers
		end
	end, 'POST', json.encode(data), { ['Content-Type'] = 'application/json' })
end

Fsx.Rest.Build = function()

	local NewApiBuild = {
		Route = Fsx.Rest.Methods.Router(),
		Param = Fsx.Rest.Methods.Parameter(),
		ResponseHandler = Fsx.Rest.Methods.ResponseHandler,
		Fetch = Fsx.Rest.Methods.Fetch,
		Post = Fsx.Rest.Methods.Post,
	}

	return Fsx.Core.Class({}, {
		__index = NewApiBuild,
		SetHttpHandler(function(req, res) NewApiBuild.Route:handler(NewApiBuild.Param, req, res) end)
	}, true)

end

Fsx.Resource = {}

Fsx.Resource.VersionCheck = function(ResourceName, ResourceVersion)

	local Uri = ('https://api.github.com/repos/fxserver-exclusives/%s/releases/latest'):format(ResourceName)

	-- check version of resource
	Fsx.Rest.Methods.Fetch(Uri, function(success, response, headers)

		local str = ''

		if success then

			local LatestVersion = string.gmatch(response.name, "%d.%d.%d")()

			str = str .. ('\n^5ltst version: ^2%s^5\ncurr version: ^3%s\n'):format(LatestVersion, ResourceVersion)

			if LatestVersion == ResourceVersion then

				str = str .. '\n^2SUCC: everything is up to date...'

			else

				str = str .. ('\n^8WARN: your version of the %s is not up to date. you can download the latest version from the link below.'):format(ResourceName)
				str = str .. ('\n^3DOWNLOAD: ^5%s'):format(response.html_url)

			end

		else

			str = str .. '\n^3WARN: could not verify the version of your resource...'

		end

		str = str .. '\n^2SUCC: resource is up and running...\n\n^9Created by ^8Sm1Ly^9 for servers build with the ^8CitizenFX Framework^9!\n^0'

		print(str)

	end)

end