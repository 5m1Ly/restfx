FxAPI.RegisterRequest('/tebex', function(req, res)

	FxAPI.Debug(req, 'request')

	-- if req.body.type ~= 'validation.webhook' then

	-- else
	-- 	res.body = { id = req.body.id }
	-- end

		res.body = { id = 'sdkflskdfjlskjdf' }
	return res

end, 'POST')