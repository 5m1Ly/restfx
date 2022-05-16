# Fxs.system.resource (_Server Side Module_)
Here you'll find the documentation of the _Fxs.system.resource_ table. This table contains methods to check the integrity of your resource.

## Dependecies
_NOTE: The files that are loaded below are dependencies for this module of the fsx-api library_
### Modules
- config/http_status_codes
- core/string
- core/class
- system/http

### Resource Manifest
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

### .vChecker([owner], [repo], [version])
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
Fsx.system.resource.vChecker(
	'fxserver-exclusives',
	resource_name,
	GetResourceMetadata(resource_name, "version")
)
```
<hr>