# Fxs.system.http
Here you'll find the documentation of the http table. This table contains methods to create rest apis.

# Contents
- Dependecies
- Methods

# Dependecies
_* The files that are loaded below are dependencies for the module_
- Modules
	- config/http_status_codes
	- core/string
	- core/class
- Resource Manifest
	```lua
	server_scripts {
	    "@fxs-api/lib/config/http_status_codes.lua",
	    "@fxs-api/lib/core/string.lua",
	    "@fxs-api/lib/core/class.lua",
	    "@fxs-api/lib/system/http.lua"
	}
	```

# Methods
_* within any snippet we refer to the localhost addres which is `127.0.0.1:30120`_

## .rest()
With this function you are able to initialize a new class mimic which is used to build the api with

### Snippet
```lua
local Api = Fsx.system.http.rest()
```

<br>
<hr>
<br>

## .route()
With this method you are able to create multible route extentions to the base uri

### Parameters
| name    | value    | required | disc                                                                |
|---------|----------|----------|---------------------------------------------------------------------|
| method  | String   | yes      | Defines the request method, either 'GET' or 'POST'                  |
| path    | String   | yes      | Defines the api call route, could be anything exept an empty string |
| handler | Function | yes      | Handels the local params and response for a request                 |

### Snippet
```lua
local Api = Fsx.system.http.rest()

-- call route: http://127.0.0.1:30120/fxs-api/hi
-- with param: http://127.0.0.1:30120/fxs-api/hi?to=mom
Api.route('GET', 'hi', function(params, response)
	-- when a param is given you can get it like this
	local to = param.to -- param.to = 'mom'
	-- Response([http status code (number)][, message (string)][, data (table)])
	response(200, "mom", { mood = "happy" })
end)
```

<br>
<hr>
<br>

## .param()
With this method you are able to create global params that can be used on multible routes

### Parameters
| name     | value    | required | disc                                                                                                             |
|----------|----------|----------|------------------------------------------------------------------------------------------------------------------|
| param    | String   | yes      | the name of the parameter                                                                                        |
| handler  | Function | yes      | Handles the given value of a parameter                                                                           |
| override | Boolean  | no       | when you want to rewrite a handler later on in the code you need to set this to true otherwise it trows an error |

### Snippet
```lua
local Api = Fsx.system.http.rest()

-- call http://127.0.0.1:30120/fxs-api/hi?to=mom -> "hi, son"
-- call http://127.0.0.1:30120/fxs-api/hi?to=grandmom -> "hi, grandson"
Api.param('to', function(val)
	-- when using params make sure to return some sort of default value
	-- otherwise it will create errors
	return val == "grandmom" and "hi, grandson" or "hi, son"
end)

-- so when you call it a again for the same param and you want to rewite it set the override param
Api.param('to', function(val)
	return val == "granddad" and "hi, grandson" or "hi, son"
end, true)
```

<br>
<hr>
<br>

## .fetch()
With this method you are able to make a get request to the desired api

### Parameters
| name     | value    | required | disc                                |
|----------|----------|----------|-------------------------------------|
| uri      | String   | yes      | The url to make the get request to  |
| callback | Function | no       | Callback to handle the call results |

### Snippet
```lua
local Api = Fsx.system.http.rest()

Api.fetch('https://pokeapi.co/api/v2/pokemon/ditto', function(success, response, headers)
	if success then
		-- handle the response
	end
end)

-- you dont have to use the callback you can also call it like this
local success, response, headers = Api.fetch('https://pokeapi.co/api/v2/pokemon/ditto')

if success then
	-- handle the response
end
```

<br>
<hr>
<br>

## .post()
With this method you are able to make a get request to the desired api

### Parameters
| name     | value    | required | disc                                |
|----------|----------|----------|-------------------------------------|
| uri      | String   | yes      | The url to make the post request to |
| data     | Table    | no       | Data to send with the post request  |
| callback | Function | no       | Callback to handle the call results |

### Snippet
```lua
local Api = Fsx.system.http.rest()

Api.post('https://pokeapi.co/api/v2/pokemon/ditto', { hi = "mom" }, function(success, response, headers)
	if success then
	-- handle the response
	end
end)

-- you dont have to use the callback you can also call it like this
local success, response, headers = Api.post('https://pokeapi.co/api/v2/pokemon/ditto', { hi = "mom" })

if success then
	-- handle the response
end
```