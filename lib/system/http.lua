Fsx = Fsx or {}
Fsx.system = Fsx.system or {}

Fsx.system.http = {}

Fsx.system.http.response = function(response)
	return Fsx.core.table.class({ response = response }, function(self, code, message, object)
		code = code or 500
		local data = {
			status = {
				code = code,
				disc = Fsx.config.http_status_codes[code]
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

Fsx.system.http.parameter = function()
	return Fsx.core.table.class({
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

Fsx.system.http.path = function(method, path, handler)
	return Fsx.core.table.class({
		path = path,
		method = method,
		handler = handler
	}, function(self, p, r)
		return self.handler(p, r)
	end)
end

Fsx.system.http.router = function()

	local temp_router = {
		paths = {}
	}

	function temp_router:handler(params, request, response)
		local Response = Fsx.system.http.response(response)
		local fullPath = Fsx.core.string.sub(request.path, 2)
		local path = Fsx.core.string.split(fullPath, '?')
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
			local temp = Fsx.core.string.split(path[2], '&')
			for k, v in pairs(temp) do
				local kv = Fsx.core.string.split(v, '=')
				prms[kv[1]] = kv[2] or true
				Fsx.core.table.remove(prms, 1)
			end
			for index, value in pairs(prms) do
				if params.global[index] ~= nil then
					prms[index] = params.global[index](value)
				end
			end
		end
		return self.paths[path[1]](prms, Response)
	end

	return Fsx.core.table.class(temp_router, function(self, method, path, handler)
		self.paths[path] = Fsx.system.http.path(method, path, handler)
	end)

end

Fsx.system.http.resHandler = function(method, uri, status, response, headers)
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

Fsx.system.http.fetch = function(uri, callback)
	PerformHttpRequest(uri, function(status, response, headers)
		local rtv = Fsx.system.http.resHandler('GET', uri, status, response, headers)
		if callback ~= nil then
			return callback(rtv.success, rtv.data, rtv.headers)
		else
			return rtv.success, rtv.data, rtv.headers
		end
	end, 'GET', nil, { ['Accept'] = 'application/vnd.github.v3+json' })
end

Fsx.system.http.post = function(uri, callback, data)
	PerformHttpRequest(uri, function(status, response, headers)
		local rtv = Fsx.system.http.resHandler('POST', uri, status, response, headers)
		if callback ~= nil then
			return callback(rtv.success, rtv.data, rtv.headers)
		else
			return rtv.success, rtv.data, rtv.headers
		end
	end, 'POST', json.encode(data), { ['Content-Type'] = 'application/json' })
end

Fsx.system.http.rest = function()

	local newRestApi = {
		route = Fsx.system.http.router(),
		param = Fsx.system.http.parameter(),
		responseHandler = Fsx.system.http.resHandler,
		fetch = Fsx.system.http.fetch,
		post = Fsx.system.http.post,
	}

	return Fsx.core.table.class({}, {
		__index = newRestApi,
		SetHttpHandler(function(req, res) newRestApi.route:handler(newRestApi.param, req, res) end)
	}, true)

end