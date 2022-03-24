local Api = api.create("v1")

Api.route('GET', 'hi', function(params, response)

	response(200, 'mom')

end)