<h1 align="center">RestFX Library</h1>
<p align="center"><small><strong>i'm currently writing the new documentation, not all methods are documented yet</strong></small></p>

## About
This library is primarly created to make the process of building rest api calls in your server easier. Next to the methods which achieves this, methods for easly creating http requests, validating the version of a resource & build in tebex webhook support.

## Documentation Contents
- **Installation & Setup** | [jump ->]()
- **Methods (imports & exports)** | [jump ->]()
	- api.route(): void
	- api.http.post(): void
	- api.http.fetch(): void
	- api.debug(): void
	- api.checksum(): boolean
	- api.github(): void
- **Tebex Webhook Support** | [jump ->]()
	- setup
	- events

## Installation & Setup

## Methods (imports & exports)

### **api.route()**
### **api.http.post()**
Creates a debug string of the given value and then prints it to the console.

#### **Parameters**
| # | name     | value  | disc                                     |
|---|----------|--------|------------------------------------------|
| 1 | value    | any    | the value you want to debug              |
| 2 | index    | string | reference of the value you want to print |

#### **Snippet**
```lua
-- export:
exports.restfx:PreformRequest('https://pokeapi.co/api/v2/pokemon/ditto', {
	method = 'GET'
}, function(body: table, head: table, code: number) end) --> void

-- import:
-- with either option of the imports the method will be set by itself
api.http.fetch('https://pokeapi.co/api/v2/pokemon/ditto', function(body, head, code) end) --> void
-- or:
api.http.fetch('https://pokeapi.co/api/v2/pokemon/ditto', {
	head = { ... }, body = { ... }
}, function(body, head, code) end) --> void
```
---
### **api.http.fetch()**
Preforms a HTTP GET request for the given uri.

#### **Parameters**
| # | name     | value    | disc                                     |
|---|----------|----------|------------------------------------------|
| 1 | uri      | string   | the value you want to debug              |
| 2 | callback | function | reference of the value you want to print |
| 3 | head     | table    | reference of the value you want to print |

#### **Snippet**
```lua
local uri = 'https://pokeapi.co/api/v2/pokemon/ditto'
local callback = function(body, head, code)
	-- cb, body -> response body (already decoded)
	-- cb, head -> response header
	-- cb, code -> http status code
end
local head = {}

-- import:
api.http.fetch(uri, callback, head) --> void
```
---
### **api.debug()**
Creates a debug string of the given value and then prints it to the console.

#### **Parameters**
| # | name     | value  | disc                                     |
|---|----------|--------|------------------------------------------|
| 1 | value    | any    | the value you want to debug              |
| 2 | index    | string | reference of the value you want to print |

#### **Snippet**
```lua
local value = 123 -- value to debug

-- export: (output: $ default num = 123)
exports.restfx:Debug(value, 'default num') --> void

-- import: (output: $ changed num = 246)
api.debug((value + 123), 'changed num') --> void
```
---
### **api.checksum()**
Preforms a check between 2 strings with sha256 hashing.

#### **Parameters**
| # | name     | value  | disc                                  |
|---|----------|--------|---------------------------------------|
| 1 | str_x    | string | string to hash and compare with str_x |
| 2 | str_y    | string | string to hash and compare with str_y |

#### **Snippet**
```lua
-- export:
exports.restfx:Sha256CheckSum('v1.0.0', 'v1.0.0') --> bool, true
-- import:
api.checksum('v1.0.0', 'v1.0.0-beta') --> bool, false
```
---
### **api.github()**
This method can be used to check if a copy of your resource is still up to date with the latest release of your github repository, this method only works for resources in public github repositories.

#### **Parameters**
| # | name     | value         | disc                                      |
|---|----------|---------------|-------------------------------------------|
| 1 | resource | string \| nil | holds the name of the github repository   |
| 2 | author   | string \| nil | holds the owner of the github repository  |
| 3 | version  | string \| nil | holds the current version of the resource |

#### **Snippet**
```lua
-- if the given parameters are nil it will default to,
-- the returned value of the called natives below
local resource = --[[ GetInvokingResource() or ]] GetCurrentResourceName()
local author = GetResourceMetadata(resource, "author")
local version = GetResourceMetadata(resource, "version")
-- export:
exports.restfx:CheckRepoVersion(resource, author, version) --> void
-- import:
api.github(resource, author, version) --> void
```
---
## Tebex Support

### Setup

### Events