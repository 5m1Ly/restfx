# **FXS Rest Api Builder Library v2**

# About
This library is build to easly create a REST api for your fivem server. It uses a simpel format which allows you to easly create api call paths and add parameters to those, also add handlers for these call paths and parameters. This could be used for building desktop, mobile and web apps if you want to deliver high preformance on a bigger scale.

# Contents
- Usage
- Methods
	- Fxs.Rest.Build()
	- .Route()
	- .Param()
	- .Fetch()
	- .Post()

# Usage
1. **in resource**

	You can use the lib in several diffrent ways, the resource itself contains a file in the following location<br>`root/fxs-api/src/server/main.lua`. Here you are able to build you rest api.

1. **file loading**

	If you want to build a rest api for a specifc resource you could load the following file,<br>`@fxs-api/dist/library.lua` on the server side in you fxmanifest file.

1. **exports**

	We also have a export system in place you can use simply call<br>`exports['fxs-api']:method([params])` to use the api class mimic.

# Methods
Here you'll find a list width available methods (functions) from the api class mimic. You don't need to use the create function when using the export system.
_* within any snippet we refer to the localhost addres which is `127.0.0.1:30120`_

## Fxs.Rest.Build()
With this function you are able to initialize a new class mimic which is used to build the api with

### Snippet
```lua
-- file: server/main.lua

-- base uri: http://127.0.0.1:30120/fxs-api/path?param=example
local Api = Fxs.Rest.Build()
```

<br>
<hr>
<br>

## .Route()
With this method you are able to create multible route extentions to the base uri

### Calls
- `Api.Route([method], [path], [handler])`
- `exports['fxs-api']:Route([method], [path], [handler])`

### Parameters
| name    | value    | required | disc                                                                |
|---------|----------|----------|---------------------------------------------------------------------|
| method  | String   | yes      | Defines the request method, either 'GET' or 'POST'                  |
| path    | String   | yes      | Defines the api call route, could be anything exept an empty string |
| handler | Function | yes      | Handels the local params and response for a request                 |

### Snippet
```lua
-- file: server/main.lua

-- call route: base_uri/hi
Api.Route('GET', 'hi', function(params, response)

	-- when using params make sure to return some sort of default value
	-- otherwise it will create errors

	print(params.to) -- prints "mom" to console

	-- Response([http status code (number)][, message (string)][, data (table)])
	response(200, "mom", { mood = "happy" })

end)
```

<br>
<hr>
<br>

## .Param()
With this method you are able to create global params that can be used on multible routes

### Calls
- `Api.Param([param], [handler][, override])`
- `exports['fxs-api']:Param([method], [path], [handler])`

### Parameters
| name     | value    | required | disc                                                                                                             |
|----------|----------|----------|------------------------------------------------------------------------------------------------------------------|
| param    | String   | yes      | the name of the parameter                                                                                        |
| handler  | Function | yes      | Handles the given value of a parameter                                                                           |
| override | Boolean  | no       | when you want to rewrite a handler later on in the code you need to set this to true otherwise it trows an error |

### Snippet
```lua
-- file: server/main.lua

-- call base_uri/hi?to=mom or base_uri/hi?to=dad
-- returns -> "hi, son"

-- call base_uri/hi?to=grandmom
-- returns -> "hi, grandson"

Api.Param('to', function(val)

	-- when using params make sure to return some sort of default value
	-- otherwise it will create errors

	return val == "grandmom" and "hi, grandson" or "hi, son"

end)

-- so when you call it a again for the same param and you want to rewite it set the override param
Api.Param('to', function(val)

	return val == "granddad" and "hi, grandson" or "hi, son"

end, true)
```

<br>
<hr>
<br>

## .Fetch()
With this method you are able to make a get request to the desired api

### Calls
- `Api.Fetch([uri][, callback])`
- `exports['fxs-api']:Fetch([method], [path], [handler])`

### Parameters
| name     | value    | required | disc                                |
|----------|----------|----------|-------------------------------------|
| uri      | String   | yes      | The url to make the get request to  |
| callback | Function | no       | Callback to handle the call results |

### Snippet
```lua
-- file: server/main.lua

Api.Fetch('https://pokeapi.co/api/v2/pokemon/ditto', function(success, response, headers)
	if success then
		response = setmetatable(response, { __tostring = tostringMethod })
		print(response)
	end
end)

-- you dont have to use the callback you can also call it like this
local success, response, headers = Api.Fetch('https://pokeapi.co/api/v2/pokemon/ditto')

if success then
	response = setmetatable(response, { __tostring = tostringMethod })
	print(response)
end
```

<br>
<hr>
<br>

## .Post()
With this method you are able to make a get request to the desired api

### Calls
- `Api.Post([uri], [data][, callback])`
- `exports['fxs-api']:Post([method], [path], [handler])`

### Parameters
| name     | value    | required | disc                                |
|----------|----------|----------|-------------------------------------|
| uri      | String   | yes      | The url to make the post request to |
| data     | Table    | no       | Data to send with the post request  |
| callback | Function | no       | Callback to handle the call results |

### Snippet
```lua
-- file: server/main.lua

Api.Post('https://pokeapi.co/api/v2/pokemon/ditto', { hi = "mom" }, function(success, response, headers)
	if success then
		response = setmetatable(response, { __tostring = tostringMethod })
		print(response)
	end
end)

-- you dont have to use the callback you can also call it like this
local success, response, headers = Api.Post('https://pokeapi.co/api/v2/pokemon/ditto', { hi = "mom" })

if success then
	response = setmetatable(response, { __tostring = tostringMethod })
	print(response)
end
```