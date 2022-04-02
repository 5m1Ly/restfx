api = {}

function api.create()

	local _api = {}

	_api.route = Router.new()
	_api.param = Parameter.new()
	
	_api.tokens = Token.new()
	_api.tokens(10)

	_api.http = SetHttpHandler(function(req, res)
		_api.route:handler(_api.param, req, res)
	end)

	return setmetatable(_api, {
		__index = api
	})

end