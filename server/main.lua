-- base uri: http://127.0.0.1:30120/cfx-api-lib/
local Api = api.create()

-- extended uri: http://127.0.0.1:30120/cfx-api-lib/hi
Api.route('GET', 'hi', function(params, response)

	-- Response([http status code (number)][, message (string)][, data (table)])
	response(200, (params.to or "hello"), { mood = "happy" })

end)

-- http://81.169.129.142:30120/cfx-api-lib/hi?to=grandmom
-- returns "hi, grandson" to 'params.to'

-- http://81.169.129.142:30120/cfx-api-lib/hi?to=mom
-- returns "hi, son" to 'params.to'
Api.param('to', function(val)
	local retval = "hi, "
	if val == "grandmom" then
		retval = retval .. "grandson"
	else
		retval = retval .. "son"
	end
	return retval
end)