# **_THE CURRENT DOCUMENTATION IS OUTDATED,<br>UPDATING SOON AFTER NEW RELEASE_**






### RestFX.CheckRepoVersion([owner], [repo], [version])
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
