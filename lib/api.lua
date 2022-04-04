api = {}

function api.create()

	local _api = {}

	-- set used class mimics
	_api.route = Router.new()
	_api.param = Parameter.new()

	-- shared function for fetch and post
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

	-- fetch function
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

	-- post function
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

	-- return api class mimic
	return setmetatable(_api, {
		__index = api,
		SetHttpHandler(function(req, res) _api.route:handler(_api.param, req, res) end),
		__metatable = nil -- don't touch makes http handler invisible to the outside
	})

end