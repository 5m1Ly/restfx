Config = {}

Config.ServerURI = 'http://localhost:30120/'

Config.ErrorLevel = 10
Config.DebugLevel = 10

Config.Methods = {
	{ name = 'GET', 	allowed = true,  RequestBody = false },
	{ name = 'HEAD', 	allowed = false, RequestBody = false },
	{ name = 'POST', 	allowed = false,  RequestBody = false },
	{ name = 'PUT', 	allowed = false, RequestBody = false },
	{ name = 'DELETE', 	allowed = false, RequestBody = false },
	{ name = 'OPTIONS', allowed = false, RequestBody = false },
	{ name = 'PATCH', 	allowed = false, RequestBody = false }
}