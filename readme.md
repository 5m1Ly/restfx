# **CFX Api Library**
This library contains a subset of class mimics, so you can easly build an api for your FiveM or RedM server.

## Contents
- creating a route
- adding paths to a route

_* within this example we refer to the localhost addres which is `127.0.0.1:30120`_

### creating a route
When creating a new route you need to do 2 things.
1. initialize a new route with a specified path
2. set the request handler
```lua
-- file: server/main.lua

-- base uri: http://127.0.0.1:30120/cfx-api-lib/my_route
local Route = Router.new('my_route')

-- set http request handler
SetHttpHandler(function(req, res)

	-- send the request and response to the handler of the created route
	Route:handler(req, res)

end)
```

### adding paths to a route
Now your able to create new paths for your api by calling the create route
```lua
-- file: server/main.lua

-- extended uri: http://127.0.0.1:30120/cfx-api-lib/my_route/hi
Route('GET', 'hi', function(Params, Response)

	Response(200, "mom", { mood = "happy" })

end)
```
If you want to send params do it as the following<br>
`http://127.0.0.1:30120/cfx-api-lib/my_route/hi?by=my_name&mood=sad`

now you can call this in the route callback as the following
```
Route('GET', 'hi', function(Params, Response)

	-- prints 'my_name' to the console
	print(Params.by)

	-- prints 'sad' to the console
	print(Params.mood)

end)
```


#### Route()
##### Parameters
| # | param    | value    | disc                                      |
|---|----------|----------|-------------------------------------------|
| 1 | method   | Sting    | he method of the api call                 |
| 2 | path     | String   | could be whatever you like it to be       |
| 3 | callback | Function | triggers on a call to the current address |

##### Callback
| # | param    | value | disc                                          |
|---|----------|-------|-----------------------------------------------|
| 1 | Params   | Table | parameters given with the call                |
| 2 | Response | Table | extended res param given to the route handler |


#### Response()
##### Parameters
| # | param   | value  | disc             |
|---|---------|--------|------------------|
| 1 | status  | Number | http status code |
| 2 | message | String | response message |
| 3 | data    | Table  | response data    |
