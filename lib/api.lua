api = {}

function api.create()

	local _api = {}

	_api.route = Router.new()
	_api.param = Parameter.new()
	_api.http = SetHttpHandler(function(req, res)
		_api.route:handler(_api.param, req, res)
	end)

	_api.post = function(uri, data, callback)

		PerformHttpRequest(uri, function(status, response, headers)
			status = tonumber(status)
			if status >= 100 and status <= 300 then
				response = json.decode(response)
				return callback ~= nil and callback(true, response, headers) or response
			else
				return callback ~= nil and callback(false) or false
			end
		end, 'POST', json.encode(data), {
			['Content-Type'] = 'application/json'
		})

	end

	_api.fetch = function(uri, callback)
		
		PerformHttpRequest(uri, function(status, response, headers)
			
			status = tonumber(status)

			if status >= 100 and status <= 300 then
				response = json.decode(response)
				return callback ~= nil and callback(true, response, headers) or response
			else
			
				print(status, response, headers)
				headers = setmetatable(headers, { __tostring = tostringMethod })
				print(headers)

				return callback ~= nil and callback(false) or false
			
			end
		
		end, 'GET')
	
	end

	return setmetatable(_api, {
		__index = api
	})

end