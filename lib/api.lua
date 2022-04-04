api = {}

function api.create()

	local _api = {}

	_api.route = Router.new()
	_api.param = Parameter.new()
	_api.http = SetHttpHandler(function(req, res)
		_api.route:handler(_api.param, req, res)
	end)

	_api.call = function(method, uri, callback, data, ...)

		local rtv = { success = false, headers = {}, data = {} }

		PerformHttpRequest(uri, function(status, response, headers)

			status = tonumber(status)

			if status >= 100 and status <= 300 then

				rtv.success = true
				rtv.data = json.decode(response)
				rtv.headers = headers

			else

				print(('^8ERROR: api %s request to %s failed, recieved http status code %s^0'):format(method, uri, status))

			end

			return callback ~= nil and callback(rtv.success, rtv.data, rtv.headers) or rtv

		end, method, ...)

	end

	_api.post = function(uri, callback, data)

		return _api.call('POST', uri, callback, json.encode(data), { ['Content-Type'] = 'application/json' })

	end

	_api.fetch = function(self, uri, callback)

		print(self)

		return _api.call('GET', uri, callback)

	end

	return setmetatable(_api, {
		__index = api,
		__tostring = tostringMethod
	})

end