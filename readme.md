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
### **api.http.fetch()**
### **api.debug()**
Creates a debug string of the given value and then prints it to the console.

#### **Parameters**
| # | name     | value  | disc                                     |
|---|----------|--------|------------------------------------------|
| 1 | value    | any    | the value you want to debug              |
| 2 | index    | string | reference of the value you want to print |

#### **Snippet**
```lua
local order = {
    food = {
        pizza = {
            toppings = {
                'cheese',
                'peperoni'
            },
            amount = 2,
            price = 14.99
        }
    },
    drinks = {
        cola = {
            amount = 3,
            price = 2.99
        }
    },
    total = 38.95,
    payed = true
}
-- export:
exports.restfx:Debug('v1.0.0', 'v1.0.0') --> bool, true
-- import:
api.debug('v1.0.0', 'v1.0.0-beta') --> bool, false
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