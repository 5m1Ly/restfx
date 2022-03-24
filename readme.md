# **CFX Api Library**
This library contains a subset of class mimics, so you can easly build an api for your FiveM or RedM server.

## Contents
- creating a route
- adding paths

_* within this example we refer to the localhost addres which is `127.0.0.1:30120`_

### creating a route
When creating a new route you need to do 2 things.
```lua
-- file: server/main.lua

-- base uri: http://127.0.0.1:30120/cfx-api-lib/my_route
local Api = api.create('my_route')
```

### adding paths to a route
Now your able to create new paths for your api by calling the create route
```lua
-- file: server/main.lua

-- extended uri: http://127.0.0.1:30120/cfx-api-lib/my_route/hi
-- extended uri with params: http://127.0.0.1:30120/cfx-api-lib/my_route/hi?to=mom&mood=sad
Api.route('GET', 'hi', function(Params, Response)

	print(Params.to) -- prints "mom" to console
	print(Params.mood) -- prints "sad" to console
    
	-- Response([http status code (number)][, message (string)][, data (table)])
	Response(200, "mom", { mood = "happy" })

end)
```
