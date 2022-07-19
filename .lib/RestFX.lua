--[[ ====================================== EXTENDED LUA LIBRARIES ====================================== ]]

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

--[[ ========================================== ACTUAL LIBRARY ======================================== ]]

RestFX = {}

local function Response(response)
	return setmetatable({
		response = response
	}, { 
		__call = function(self, code, message, object)
			code = code or 500
			local data = { status = { code = code } }
			if code >= 200 and code <= 299 then
				data.message = message
				data.data = object
			end
			self.response.writeHead(code, {
				["Access-Control-Allow-Origin"] = "*",
				["Content-Type"] = "application/json"
			})
			self.response.send(json.encode(data))
		end
	})
end

local function Parameter()
	return setmetatable({
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
	})
end

local function Path(method, path, handler)
	return setmetatable({
		path = path,
		method = method,
		handler = handler
	}, {
		__call = function(self, p, r)
			return self.handler(p, r)
		end
	})
end

local function Router()

	local temp_router = {
		paths = {}
	}

	function temp_router:handler(params, request, response)
		local Response = Response(response)
		local fullPath = string.sub(request.path, 2)
		local path = string.split(fullPath, '?')
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
			local temp = string.split(path[2], '&')
			for k, v in pairs(temp) do
				local kv = string.split(v, '=')
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

	return setmetatable(temp_router, {
		__call = function(self, method, path, handler)
			self.paths[path] = Path(method, path, handler)
		end
	})

end

local function ResHandler(method, uri, status, response, headers)
	local rtv = { status = tonumber(status), success = false, data = {}, headers = headers }
	if rtv.status >= 200 and rtv.status < 300 then
		rtv.success = true
		rtv.data = json.decode(response)
	else
		print('^8ERROR:ERINFO: http rest api request failed')
		print(('^8ERROR:METHOD: %s'):format(method))
		print(('^8ERROR:REQURI: %s'):format(uri))
		print(('^8ERROR:STCODE: %s^0'):format(status))
	end
	return rtv
end

local function Fetch(uri, callback)
	PerformHttpRequest(uri, function(status, response, headers)
		local rtv = ResHandler('GET', uri, status, response, headers)
		if callback ~= nil then
			return callback(rtv.success, rtv.data, rtv.headers)
		else
			return rtv.success, rtv.data, rtv.headers
		end
	end, 'GET', nil, { ['Accept'] = 'application/vnd.github.v3+json' })
end
RestFX.Fetch = Fetch

local function Post(uri, callback, data)
	PerformHttpRequest(uri, function(status, response, headers)
		local rtv = ResHandler('POST', uri, status, response, headers)
		if callback ~= nil then
			return callback(rtv.success, rtv.data, rtv.headers)
		else
			return rtv.success, rtv.data, rtv.headers
		end
	end, 'POST', json.encode(data), { ['Content-Type'] = 'application/json' })
end
RestFX.Post = Post

local function GitHubVersionCheck(repo_owner, repo_name, repo_version)
	local REQUEST_URI = ('https://api.github.com/repos/%s/%s/releases/latest'):format(repo_owner, repo_name)
	-- check version of resource
	RestFX.Fetch(REQUEST_URI, function(success, response, headers)
		local str = ''
		if success then
			local latest_version = string.gmatch(response.name, "%d.%d.%d")()
			str = str .. ('^5version: ^3%s'):format(latest_version, repo_version)
			if latest_version == repo_version then
				str = str .. '\n^2SUCC: everything is up to date...'
			else
				str = str .. ('\n^8WARN: your version of the %s is not up to date. you can download the latest version from the link below.'):format(repo_name)
				str = str .. ('\n^3DOWNLOAD: ^5%s'):format(response.html_url)
			end
		else
			str = str .. '\n^3WARN: could not verify the version of your resource...'
		end
		str = str .. '\n^2SUCC: resource is up and running...\n^9Created by ^8Sm1Ly^9 for servers build with the ^8CitizenFX Framework^9!^0'
		print(str)
	end)
end
RestFX.GHvCheck = GitHubVersionCheck

local function BuiltRestApi()
	local rest = {
		route = Router(),
		param = Parameter(),
		responseHandler = ResHandler,
		fetch = Fetch,
		post = Post,
	}
	return setmetatable(rest, {
		SetHttpHandler(function(req, res) rest.route:handler(rest.param, req, res) end),
		__metatable = nil
	})
end
RestFX.Built = BuiltRestApi

--[[ ====================================== CHECK FOR UPDATES ====================================== ]]

-- Get current resource name
local resource_name = 'restfx' -- GetCurrentResourceName()

-- Check resource version
RestFX.GHvCheck('5m1Ly', resource_name, GetResourceMetadata(GetCurrentResourceName() --[[resource_name]], "version"))