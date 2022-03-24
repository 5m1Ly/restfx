-- base uri: http://server_ip:port/cfx-api/v1
local Api = api.create("v1")

-- extended path: /hi
Api.route('GET', 'hi', function(params, response)

	response(200, 'mom')

end)