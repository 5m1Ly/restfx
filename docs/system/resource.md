# Fxs.system.resource (**Server Side Module**)
Here you'll find the documentation of the http table. This table contains methods to create rest apis.

## Dependecies
_* The files that are loaded below are dependencies for the module_
- Modules
	- config/http_status_codes
	- core/string
	- core/class
	- system/http
- Resource Manifest
	```lua
	shared_scripts {
	    "@fxs-api/lib/config/http_status_codes.lua",
	    "@fxs-api/lib/core/string.lua",
	    "@fxs-api/lib/core/class.lua",
	}
	server_scripts {
	    "@fxs-api/lib/system/http.lua",
	    "@fxs-api/lib/system/resource.lua",
	}
	```

## Methods

### .vChecker()
With this method you are able to check the version of a resource you created