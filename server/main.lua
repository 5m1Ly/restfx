-- base uri: http://127.0.0.1:30120/cfx-api-lib/my_route
local Api = api.create('my_route')

-- extended uri: http://127.0.0.1:30120/cfx-api-lib/my_route/hi
-- extended uri with params: http://127.0.0.1:30120/cfx-api-lib/my_route/hi?to=mom&mood=sad
Api.route('GET', 'hi', function(params, response)

	-- Response([http status code (number)][, message (string)][, data (table)])
	response(200, params.to, { mood = "happy" })

end)

Api.param('to', function(val)

	local retval = "hi, "

	if val == "mom" then
		retval = retval .. "son"
	elseif val == "grandmom" then
		retval = retval .. "grandson"
	end

	return retval

end)