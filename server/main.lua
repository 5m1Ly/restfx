-- base uri: http://server_ip:port/cfx-api/v1
local route = Router.new('v1')

-- set http request handler
SetHttpHandler(function(req, res)

	-- send the request and response to the created route
	route:handler(req, res)

end)

-- extended path: /hi
route('hi', function(params, res)

	local msg = "hi, "

	if params.to == "grandmom" and params.from == "son" then
		msg = msg .. "grandson"
	elseif params.to == "mom" and params.from == "son" then
		msg = msg .. "son"
	end

	res(200, msg, {
		data_1 = "hi",
		data_2 = "mom"
	})

end, 'GET')