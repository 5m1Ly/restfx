# **CFX Api Library v1.2**

# Contents
- About
- Methods
	- api.create()
	- api.route()
	- api.param()


# About
I created this resource so its easy to create a api for your (FiveM or RedM) server build on the CitizenFX framework. it uses a simpel format which allows you to easly set its call method, add parameters, etc.
_* within any snippet we refer to the localhost addres which is `127.0.0.1:30120`_

# Methods
Here you'll find a list width available methods (functions) from the api class mimic

## api.create()
With this function you are able to initialize a new class mimic which is used to build the api with

### Snippet
```lua
-- file: server/main.lua

-- base uri: http://127.0.0.1:30120/cfx-api-lib
local Api = api.create()
```

## api.route()
With this method you are able to create multible route extentions to the base uri

### Parameters
`api.route([method], [path], [handler])`
| name    | value    | required | disc                                                                |
|---------|----------|----------|---------------------------------------------------------------------|
| method  | String   | yes      | Defines the request method, either 'GET' or 'POST'                  |
| path    | String   | yes      | Defines the api call route, could be anything exept an empty string |
| handler | Function | yes      | Handels the local params and response for a request                 |

### Snippet
```lua
-- file: server/main.lua

-- call route: base_uri/hi
Api.route('GET', 'hi', function(params, response)

	-- when using params make sure to return some sort of default value
	-- otherwise it will create errors

	print(params.to) -- prints "mom" to console

	-- Response([http status code (number)][, message (string)][, data (table)])
	response(200, "mom", { mood = "happy" })

end)
```

## api.param()
With this method you are able to create global params that can be used on multible routes

### Parameters
`api.param([param], [handler][, override])`
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
