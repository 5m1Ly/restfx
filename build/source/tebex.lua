local function SignatureCheckSum(req)
	
	local XSignature = req.head['X-Signature']
	local hmac_hash = exports.restfx:hmac_sha256(sha256(req.jsonbody), Config.Tebex.Secret)

	print(XSignature)
	print(hmac_hash)

	return XSignature == hmac_hash

end

FxAPI.RegisterRequest(Config.Tebex.Webhook, function(req, res)

	-- FxAPI.Debug(req, 'request')

	if SignatureCheckSum(req) then

		if req.body.type ~= 'validation.webhook' then

		else
			res.body = { id = req.body.id }
		end

	else

	end

	return res

end, 'POST')