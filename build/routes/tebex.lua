local secret = Config.Tebex.Secret -- configured tebex secret
local hmac = exports.restfx['hmac_sha256'] -- hmac hashing function which uses the sha256 algo

-- function for validating the request that has been made
local function TebexCheckSum(req)
	local rxsig = req.head['X-Signature']
	local bhash = sha256(req.jsonbody)
	return (rxsig == hmac(nil, bhash, secret))
end

-- todo: create bug report on the tebex site regarding customer payload data
restfx.route(Config.Tebex.Webhook, function(req, res)
	if TebexCheckSum(req) then
		local body = req.body
		if body.type ~= 'validation.webhook' then
			local trigger = body.type
			local subject = body.subject
			TriggerEvent('restfx:tebex.'..trigger, subject)
		end
		res.body = { id = body.id }
	else
		print('^1!!! ^3WARNING^1 !!! ^3tebex signature check sum failed, renew your webhook and secret on tebex and change them in private.cfg^1 !!! ^3WARNING^1 !!!^0')
		print('^1!!! ^3WARNING^1 !!! ^3tebex signature check sum failed, renew your webhook and secret on tebex and change them in private.cfg^1 !!! ^3WARNING^1 !!!^0')
		print('^1!!! ^3WARNING^1 !!! ^3tebex signature check sum failed, renew your webhook and secret on tebex and change them in private.cfg^1 !!! ^3WARNING^1 !!!^0')
	end
	return res
end, 'POST')