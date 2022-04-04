api = {}

function api.create()

	local _api = {}

	_api.route = Router.new()
	_api.param = Parameter.new()
	_api.http = SetHttpHandler(function(req, res)
		_api.route:handler(_api.param, req, res)
	end)

	_api.call_handle = function(method, uri, status, response, headers)

		local rtv = { status = tonumber(status), success = false, headers = {}, data = {} }

		if status >= 100 and status <= 300 then

			rtv.success = true
			rtv.data = json.decode(response)
			rtv.headers = headers

		else

			print(('^8ERROR: api %s request to %s failed, recieved http status code %s^0'):format(method, uri, status))

		end

		return rtv

	end

	_api.post = function(uri, callback, data)

		PerformHttpRequest(uri, function(status, response, headers)

			local rtv = _api.call_handle('POST', uri, status, response, headers)

			if callback ~= nil then
				return callback(rtv.success, rtv.data, rtv.headers)
			else
				return rtv.success, rtv.data, rtv.headers
			end

		end, 'POST', json.encode(data), { ['Content-Type'] = 'application/json' })

	end

	_api.fetch = function(uri, callback)

		PerformHttpRequest(uri, function(status, response, headers)

			local rtv = _api.call_handle('GET', uri, status, response, headers)

			if callback ~= nil then
				return callback(rtv.success, rtv.data, rtv.headers)
			else
				return rtv.success, rtv.data, rtv.headers
			end

		end, 'GET')

	end

	return setmetatable(_api, { __index = api })

end