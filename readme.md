<h1 align="center">RestFX Library</h1>
<p align="center"><small><strong>i'm currently writing the new documentation, not all methods are documented yet</strong></small></p>

## Documentation Contents
- **About**
- **Installation**
- **Methods**
	- fetch the library
	- create http routes
	- create http requests
	- create http requests
---
## About
This library is primarly created to make the process of building rest api calls in your server easier. Next to the methods which achieves this, methods for easly creating http requests, validating the version of a resource & build in tebex webhook support.

---
## Installation & Setup

---
## Methods

---
### RestFX.**CheckRepoVersion**(): void
This method can be used to check if a copy of your resource is still up to date with the latest release of your github repository.

#### **Parameters**

<p align="center">

| # | name    | value    | required | disc                                      |
|---|---------|----------|----------|-------------------------------------------|
| 1 | owner   | String   | yes      | Holds the owner of the github repository  |
| 2 | repo    | String   | yes      | Holds the name of the github repository   |
| 3 | version | String   | yes      | Holds the current version of the resource |

</p>

#### **Snippet**
```lua
-- Get current resource name
local repo_owner = '5m1Ly'
local repo_name = GetCurrentResourceName()
local version = GetResourceMetadata(resource_name, "version")

-- Check resource version
RestFX.CheckRepoVersion(repo_owner, repo_name, version)
```
_note, only works for resources in public github repositories._

---