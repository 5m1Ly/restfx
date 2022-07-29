Config = {}

Config.ServerURI = 'http://localhost:30120/'

Config.ErrorLevel = 10
Config.DebugLevel = 10

Config.Methods = {
	{ name = 'GET', 	allowed = false,  RequestBody = false },
	{ name = 'HEAD', 	allowed = false, RequestBody = false },
	{ name = 'POST', 	allowed = true, RequestBody = false },
	{ name = 'PUT', 	allowed = false, RequestBody = false },
	{ name = 'DELETE', 	allowed = false, RequestBody = false },
	{ name = 'OPTIONS', allowed = false, RequestBody = false },
	{ name = 'PATCH', 	allowed = false, RequestBody = false }
}

Config.PrintLabels = {
	status = '^3[request:status]^0 ',
	error = '^1[request:error]^0 '
}

-- source: https://developer.mozilla.org/en-US/docs/Web/HTTP/Status
Config.StatusCodes = {
	[1] = { -- pos: 1
		code = 500,
		status = '500 Internal Server Error',
		msg = 'There isnt any status code, status message or error message defined at index Config.StatusCodes[%s]'
	},
	[2] = {
		code = 200,
		status = '200 OK'
	}, -- pos: 2
	[3] = { -- pos: 3
		code = 400,
		status = '400 Bad Request',
		msg = 'The given request path (%s) handler cleared or didn\'t return the response data object'
	},
	[4] = { -- pos: 4
		code = 405,
		status = '405 Method Not Allowed',
		msg = 'The given request method \'%s\' isnt allowed for this request and should be a \'%s\' method'
	},
	[5] = { -- pos: 5
		code = 500,
		status = '500 Internal Server Error',
		msg = ''
	},
	[6] = { -- pos: 6
		code = 501,
		status = '501 Not Implemented',
		msg = 'There isnt any http request defined with base path \'/%s\''
	}
}