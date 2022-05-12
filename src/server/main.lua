-- base uri: http://127.0.0.1:30120/fxs-api/
local Api = Fxs.Rest.Build()


-- http://127.0.0.1:30120/fxs-api/hi
Api.Route('GET', 'hi', function(params, response)

	-- Response([http status code (number)][, message (string)][, data (table)])
	response(200, (params.to and params.to.." says hi" or "hello"), { mood = "happy" })

end)

-- http://127.0.0.1:30120/fxs-api/hi?to=grandmom
-- returns "hi, grandson" to 'params.to'

-- http://127.0.0.1:30120/fxs-api/hi?to=mom
-- returns "hi, son" to 'params.to'

Api.Param('to', function(val)

	-- when using params make sure to return some sort of default value
	-- otherwise it will create errors

	return val

end)