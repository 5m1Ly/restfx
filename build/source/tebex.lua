local function ValidateRequest(jsonBody)
	sha256()
end

FxAPI.RegisterRequest('/tebex', function(req, res)

	FxAPI.Debug(req, 'request')

	ValidateRequest(json.encode(req.body))

	if req.body.type ~= 'validation.webhook' then

	else
		res.body = { id = req.body.id }
	end

	return res

end, 'POST')