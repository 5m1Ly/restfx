-- base url: http://server_ip:port/cfx-api/v1
Router = _router.new('v1')

-- extended path: /hi?to=mom&from=son
Router('hi', function(self, params, res)

	local msg = "hi, "

	if params.to == "mom" and params.from == "son" then
		msg = msg .. "son"
	elseif params.to == "grandmom" and params.from == "son" then
		msg = msg .. "grandson"
	end

	res.send(json.encode({
		status = "200",
		msg = msg
	}))

end)

SetHttpHandler(function(req, res)
	Router:handler(req, res)
	return true
end)