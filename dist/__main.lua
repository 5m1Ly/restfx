--[[ ====================================== EXTENDED LUA LIBRARIES ====================================== ]]

--- STRING LIB ---

---@param heystack string the string to search the specified char in.
---@param needle string the specified char to look for within the given string
function string.split(heystack, needle)
	local result = { }
	local from  = 1
	local delim_from, delim_to = string.find( heystack, needle, from  )
	while delim_from do
		table.insert( result, string.sub( heystack, from , delim_from-1 ) )
		from  = delim_to + 1
		delim_from, delim_to = string.find( heystack, needle, from  )
	end
	table.insert( result, string.sub( heystack, from  ) )
	return result
end
exports('SplitString', string.split)

--- prints a table in a formatted way
---@param table_x table @ The table you want to print to the console
---@param indent number @ The amount of tabs in front of a property
---@return string
function string.tableToString(_table, indent)
	indent = indent or 0
	local str = ''
	local spcs = string.rep("    ", indent - 1)
	for k, v in pairs(_table) do
		local _type = type(v)
		str = str .. ("%s^3%s:^0 "):format(spcs.."    ", k)
		if _type == "table" then
			str = str..'{\n'
			str = str..debug.tableString(v, indent + 1)
		elseif _type == 'boolean' then
			str = str..("^1%s^0"):format(v)
		elseif _type == 'function' then
			str = str..("^9%s^0"):format(v)
		elseif _type == 'number' then
			str = str..("^5%s^0"):format(v)
		elseif _type == 'string' then
			str = str..("^2'%s'^0"):format(v)
		else
			str = str..("^2%s^0"):format(v)
		end
		str = str..(next(_table, k) ~= nil and ',' or '')..'\n'
	end
	str = str..spcs..'}'
	return str
end

--- DEBUG LIB ---

function debug.PrettyPrintTable(_table)
	print('$$$$$$$$$$$$$$$$$$ START OF DEBUG $$$$$$$$$$$$$$$$$$')
	print(string.tableToString(_table, 1))
	print('$$$$$$$$$$$$$$$$$$$ END OF DEBUG $$$$$$$$$$$$$$$$$$$')
end

--[[ =========================================== ACTUAL LIBRARY ========================================= ]]

local RestFX = setmetatable({
	calls = 0,
	builts = {}
}, {
	__call = function(self, req, res)

		local paths = string.split(req.path, '/')
		table.remove(paths, 1)

		local reqpath = paths[1]
		table.remove(paths, 1)

		local reqparams = paths

		local reqdata
		req.setDataHandler(function(data)
			reqdata = json.decode(data)
		end)

		if reqpath == 'tebex' then
			res.writeHead(200)
			res.send(json.encode({ id = reqdata.id }))
		end

	end
})

SetHttpHandler(function(req, res) RestFX(req, res) end)

-- --[[ ========================================== OLD CODE FOR REFRENCE ======================================== ]]
-- RestFX = {}
-- local function Response(response)
-- 	return setmetatable({
-- 		response = response
-- 	}, { 
-- 		__call = function(self, code, message, object)
-- 			code = code or 500
-- 			local data = { status = { code = code } }
-- 			if code >= 200 and code <= 299 then
-- 				data.message = message
-- 				data.data = object
-- 			end
-- 			self.response.writeHead(code, {
-- 				["Access-Control-Allow-Origin"] = "*",
-- 				["Content-Type"] = "application/json"
-- 			})
-- 			self.response.send(json.encode(data))
-- 		end
-- 	})
-- end
-- local function Parameter()
-- 	return setmetatable({
-- 		global = {}
-- 	}, {
-- 		__call = function(self, name, handler, bool)
-- 			local param = self.global[name]
-- 			if param == nil or (bool and param ~= nil) then
-- 				self.global[name] = handler
-- 			else
-- 				error('the parameter you tried to create a handler for all ready exists', 0)
-- 			end
-- 		end
-- 	})
-- end
-- local function Path(method, path, handler)
-- 	return setmetatable({
-- 		path = path,
-- 		method = method,
-- 		handler = handler
-- 	}, {
-- 		__call = function(self, p, r)
-- 			return self.handler(p, r)
-- 		end
-- 	})
-- end
-- local function Router()
-- 	local temp_router = {
-- 		paths = {}
-- 	}
-- 	function temp_router:handler(params, request, response)
-- 		local Response = Response(response)
-- 		local fullPath = string.sub(request.path, 2)
-- 		local path = string.split(fullPath, '?')
-- 		local sub = self.paths[path[1]]
-- 		if sub == nil then
-- 			Response(501)
-- 			return false
-- 		end
-- 		if request.method ~= sub.method then
-- 			Response(501)
-- 			return false
-- 		end
-- 		local prms = {}
-- 		if path[2] ~= nil then
-- 			local temp = string.split(path[2], '&')
-- 			for k, v in pairs(temp) do
-- 				local kv = string.split(v, '=')
-- 				prms[kv[1]] = kv[2] or true
-- 				table.remove(prms, 1)
-- 			end
-- 			for index, value in pairs(prms) do
-- 				if params.global[index] ~= nil then
-- 					prms[index] = params.global[index](value)
-- 				end
-- 			end
-- 		end
-- 		return self.paths[path[1]](prms, Response)
-- 	end
-- 	return setmetatable(temp_router, {
-- 		__call = function(self, method, path, handler)
-- 			self.paths[path] = Path(method, path, handler)
-- 		end
-- 	})
-- end
-- local function ResHandler(method, uri, status, response, headers)
-- 	local rtv = { status = tonumber(status), success = false, data = {}, headers = headers }
-- 	if rtv.status >= 200 and rtv.status < 300 then
-- 		rtv.success = true
-- 		rtv.data = json.decode(response)
-- 	else
-- 		print('^8ERROR:ERINFO: http rest api request failed')
-- 		print(('^8ERROR:METHOD: %s'):format(method))
-- 		print(('^8ERROR:REQURI: %s'):format(uri))
-- 		print(('^8ERROR:STCODE: %s^0'):format(status))
-- 	end
-- 	return rtv
-- end
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