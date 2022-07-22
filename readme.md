# **_DOCS ARE OUTDATED, UPDATING SOON AFTER NEW RELEASE_**

# Fxs.Methods.Rest (_Server Side Module_)
Here you'll find the documentation of the _Fxs.system.http_ table. This table contains methods to create rest apis.

## Resource Manifest
_NOTE: The files that are loaded below next to this module, are dependencies for this module of the fsx-api library_

```lua
shared_scripts {
    "@fxs-engine/config/http_status_codes.lua",
    "@fxs-engine/core/string.lua",
    "@fxs-engine/core/table.lua",
}

server_scripts {
    "@fxs-engine/system/http.lua",
}
```

## Methods
_* within any snippet we refer to the localhost addres which is `127.0.0.1:30120`_

### Fxs.Methods.Rest.NewApi()
With this function you are able to initialize a new class mimic which is used to build the api with

#### Snippet
```lua
local Api = Fxs.Methods.Rest.NewApi()
```
<hr>

### Fxs.Methods.Rest.Route()
With this method you are able to create multible route extentions to the base uri

#### Parameters
| name    | value    | required | disc                                                                |
|---------|----------|----------|---------------------------------------------------------------------|
| method  | String   | yes      | Defines the request method, either 'GET' or 'POST'                  |
| path    | String   | yes      | Defines the api call route, could be anything exept an empty string |
| handler | Function | yes      | Handels the local params and response for a request                 |

#### Snippet
```lua
local Api = Fxs.Methods.Rest.NewApi()

-- call route: http://127.0.0.1:30120/fxs-api/hi
-- with param: http://127.0.0.1:30120/fxs-api/hi?to=mom
Api.route('GET', 'hi', function(params, response)
	-- when a param is given you can get it like this
	local to = param.to -- param.to = 'mom'
	-- Response([http status code (number)][, message (string)][, data (table)])
	response(200, "mom", { mood = "happy" })
end)
```
<hr>

### Fxs.Methods.Rest.Param()
With this method you are able to create global params that can be used on multible routes

#### Parameters
| name     | value    | required | disc                                                                                                             |
|----------|----------|----------|------------------------------------------------------------------------------------------------------------------|
| param    | String   | yes      | the name of the parameter                                                                                        |
| handler  | Function | yes      | Handles the given value of a parameter                                                                           |
| override | Boolean  | no       | when you want to rewrite a handler later on in the code you need to set this to true otherwise it trows an error |

#### Snippet
```lua
local Api = Fxs.Methods.Rest.NewApi()

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
<hr>

### Fxs.Methods.Rest.Fetch()
With this method you are able to make a get request to the desired api

#### Parameters
| name     | value    | required | disc                                |
|----------|----------|----------|-------------------------------------|
| uri      | String   | yes      | The url to make the get request to  |
| callback | Function | no       | Callback to handle the call results |

#### Snippet
```lua
Fxs.Methods.Rest.Fetch('https://pokeapi.co/api/v2/pokemon/ditto', function(success, response, headers)
	if success then
		-- handle the response
	end
end)

-- you dont have to use the callback you can also call it like this
local success, response, headers = Fxs.Methods.Rest.Fetch('https://pokeapi.co/api/v2/pokemon/ditto')

if success then
	-- handle the response
end
```
<hr>

### Fxs.Methods.Rest.Post()
With this method you are able to make a get request to the desired api

#### Parameters
| name     | value    | required | disc                                |
|----------|----------|----------|-------------------------------------|
| uri      | String   | yes      | The url to make the post request to |
| data     | Table    | no       | Data to send with the post request  |
| callback | Function | no       | Callback to handle the call results |

#### Snippet
```lua
Fxs.Methods.Rest.Post('https://pokeapi.co/api/v2/pokemon/ditto', { hi = "mom" }, function(success, response, headers)
	if success then
	-- handle the response
	end
end)

-- you dont have to use the callback you can also call it like this
local success, response, headers = Fxs.Methods.Rest.Post('https://pokeapi.co/api/v2/pokemon/ditto', { hi = "mom" })

if success then
	-- handle the response
end
```
<hr>

### Fxs.Methods.Rest.vChecker([owner], [repo], [version])
With this method you are able to check the version of a resource you created.<br>
_NOTE: Only works for resources in public github repositorys._

#### Parameters
| name    | value    | required | disc                                      |
|---------|----------|----------|-------------------------------------------|
| owner   | String   | yes      | Holds the owner of the github repository  |
| repo    | String   | yes      | Holds the name of the github repository   |
| version | String   | yes      | Holds the current version of the resource |

#### Snippet
```lua
-- Get current resource name
local resource_name = GetCurrentResourceName()

-- Check resource version
Fxs.Methods.Rest.vChecker(
	'fxserver-exclusives',
	resource_name,
	GetResourceMetadata(resource_name, "version")
)
```
