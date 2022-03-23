-- base url: http://server_ip:port/cfx-api/v1
Route = Router.new('v1')

-- extended path: /hi?to=mom&from=son
Route('hi', function(params, Response)

	local msg = "hi, "

	if params.to == "mom" and params.from == "son" then
		msg = msg .. "son"
	elseif params.to == "grandmom" and params.from == "son" then
		msg = msg .. "grandson"
	end

	Response(200, { message = msg })

end)

SetHttpHandler(function(req, res)
	Route:handler(req, res)
	return true
end)