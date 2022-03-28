api = {}

function api.create(name)

	local _api = {}

	_api.route = Router.new(name)
	_api.param = Parameter.new()

	_api.http = SetHttpHandler(function(req, res)
		_api.route:handler(_api.param, req, res)
	end)

	return setmetatable(_api, {
		__index = api
	})

end