api = {}

function api.create(name)

	local api = {}

	return setmetatable({
		route = Router.new(name),
		SetHttpHandler(function(req, res)
			self.route:handler(req, res)
		end)
	}, {
		__index = api,
	})
end

-- base uri: http://server_ip:port/cfx-api/v1
-- local Route = Router.new('v1')

-- set http request handler
-- SetHttpHandler(function(req, res)
	-- send the request and response to the created route
	-- Route:handler(req, res)
-- end)

-- extended path: /hi
-- Route('GET', 'hi', function(params, res)
-- 	local msg = "hi, "
-- 	if params.to == "grandmom" and params.from == "son" then
-- 		msg = msg .. "grandson"
-- 	elseif params.to == "mom" and params.from == "son" then
-- 		msg = msg .. "son"
-- 	end
-- 	res(200, msg, {
-- 		data_1 = "hi",
-- 		data_2 = "mom"
-- 	})
-- end)