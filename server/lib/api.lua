api = {}

function api.create()

	local _api = {}

	_api.route = Router.new()
	_api.param = Parameter.new()
	_api.http = SetHttpHandler(function(req, res)
		_api.route:handler(_api.param, req, res)
	end)

	_api.post = function(uri, data, header, callback)
		PerformHttpRequest(uri, function(status, response, headers)
			status = tonumber(status)
			if status >= 100 and status <= 300 then
				response = json.decode(response)
				return callback ~= nil and callback(true, response, header) or true, response, headers
			else
				return callback ~= nil and callback(false) or false
			end
		end, 'POST', data, header)
	end

	_api.fetch = function(uri, callback)
		PerformHttpRequest(uri, function(status, response, header)
			status = tonumber(status)
			if status >= 100 and status <= 300 then
				response = json.decode(response)
				return callback ~= nil and callback(true, response, header) or true, response, header
			else
				return callback ~= nil and callback(false) or false
			end
		end, 'GET')
	end

	return setmetatable(_api, {
		__index = api
	})

end