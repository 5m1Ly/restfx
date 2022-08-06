![restfx logo](img/restfx_banner_trans.png)

## About
This library is primarly created to make the process of building rest api calls in your server easier. Next to the methods which achieve this we offer various methods for easly creating http requests, validating the version of a resource & build in tebex webhook support.

## Document Contents
- **Installation & Setup** | [jump ->](https://github.com/5m1Ly/restfx#installation--setup)
- **Methods (imports & exports)** | [jump ->](https://github.com/5m1Ly/restfx#methods-imports--exports)
	- restfx.route()
	- restfx.post()
	- restfx.fetch()
	- restfx.debug()
	- restfx.checksum()
	- restfx.github()
- **Tebex Webhook Support** | [jump ->](https://github.com/5m1Ly/restfx#tebex-webhook-support)
	- setup
	- events

## Installation & Setup
1. download the latest version of the repository
1. add the folder somewhere inside the resources folder
1. if needed add the folder to your server.cfg
1. copy and past the `conf/private.lua.bkp` inside the conf folder
    - your conf folder should look like this
	  ```
	  \ conf
	  |_ config.lua
	  |_ private.lua.bkp
	  |_ private.lua
	  ```
1. load the `import.lua` in any resource you want to build a rest api for or call a rest api with
	```lua
	-- resources/**/fxmanifest.lua
	server_script '@restfx/build/import.lua'

	-- */server/*.lua
	restfx.route(...)
	restfx.fetch(...)
	```
## Methods (imports & exports)

### **restfx.route()**
Registers a handler for a specified incomming http request route.

#### **Parameters**
| # | name     | value    | disc                                     |
|---|----------|----------|------------------------------------------|
| 1 | path     | string   | the value you want to debug              |
| 2 | handler  | function | reference of the value you want to print |
| 3 | method   | string   | reference of the value you want to print |

#### **Snippet**
```lua
local path = '/ping/:player/:table'
local callback = function(req, res)
    -- default request data
    req.head            = {}
    req.method          = 'GET'
    req.address         = '127.0.0.1'
    -- path and param data
    req.path.base       = 'ping'
    req.path.registered = '/ping/:player/:table'
    req.path.full       = '/ping/5m1Ly/52498734897'
    req.params.player   = '5m1Ly'
    req.params.table    = '52498734897'
    -- change the response body if you want to
    res.body = { player2 = 'pong' }
    -- the request body is only recieved with
    -- few diffrent type of requests
	-- the recieved body is already decoding
    req.body = {}
    return res -- the result data should always be returned
end

-- import:
restfx.route(path, callback, 'GET') --> void

-- export:
exports.restfx:route(path, callback, 'POST') --> void
```
---
### **restfx.fetch() & restfx.post()**
Preforms a HTTP GET or POST request for the given uri.

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
restfx.fetch(uri, callback, head) --> void
-- import:
restfx.post(uri, callback, head) --> void
```
---
### **restfx.debug()**
Creates a debug string of the given value and then prints it to the console.

#### **Parameters**
| # | name     | value  | disc                                     |
|---|----------|--------|------------------------------------------|
| 1 | value    | any    | the value you want to debug              |
| 2 | index    | string | reference of the value you want to print |

#### **Snippet**
```lua
local value = 123 -- value to debug

-- import: (output: $ changed num = 246)
restfx.debug((value + 123), 'changed num') --> void
-- export: (output: $ default num = 123)
exports.restfx:debug(value, 'default num') --> void
```
---
### **restfx.checksum()**
Preforms a check between 2 strings with sha256 hashing.

#### **Parameters**
| # | name     | value  | disc                                  |
|---|----------|--------|---------------------------------------|
| 1 | str_x    | string | string to hash and compare with str_x |
| 2 | str_y    | string | string to hash and compare with str_y |

#### **Snippet**
```lua
-- import:
restfx.checksum('v1.0.0', 'v1.0.0-beta') --> bool, false
-- export:
exports.restfx:checksum('v1.0.0', 'v1.0.0') --> bool, true
```
---
### **restfx.github()**
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
-- import:
restfx.github(resource, author, version) --> void
-- export:
exports.restfx:github(resource, author, version) --> void
```
---
## Tebex Webhook Support

### Setup
1. for starters you need to setup dns records ([dns records?](https://www.techopedia.com/definition/5349/dns-record)) for your fivem server, this is needed because tebex doesnt support `http://{ip}:{port}/` as a valid address.
1. create a tebex account & store if you don't have one allready
1. the go to [developers -> webhooks -> endpoints](https://server.tebex.io/webhooks/endpoints)
1. click on add endpoint
1. fill out 'Endpoint URL' as `https://example.com:30120/restfx/tebex`
1. select all the 'Webhook Types' you want to trigger events for
1. copy your secret from the Secret Key section blow
1. now go to the restfx resource and past your secret in the pre defined location
1. start your server or restart the restfx resource
1. then click on validate (make sure your fxserver is running for auto validation)

---
### Events
The following (optional) webhook types trigger a corresponing event and are listed down here. Directly below this description there is an example of how to add a event handler for these events.

```
AddEventHandler('restfx:tebex.payment.completed', function(transaction)
	-- your code
end)
```

#### Payment Completed
- trigger: when a payment is completed
- event: `restfx:tebex.payment.completed`

#### Payment Declined
- trigger: when a payment is declined
- event: `restfx:tebex.payment.declined`

#### Payment Refunded
- trigger: when a payment is refunded
- event: `restfx:tebex.payment.refunded`

#### Payment Dispute Opened
- trigger: when a dispute is opened against a payment
- event: `restfx:tebex.payment.dispute.opened`

#### Payment Dispute Won
- trigger: when a dispute against a payment is won
- event: `restfx:tebex.payment.dispute.won`

#### Payment Dispute Lost
- trigger: when a dispute against a payment is lost
- event: `restfx:tebex.payment.dispute.lost`

#### Payment Dispute Closed
- trigger: when a dispute against a payment is closed
- event: `restfx:tebex.payment.dispute.closed`

---
### Webhook Event Testing
First create a item in you tebex store for $0.00 and purchase this item, this will create a valid Transaction ID. For creating a valid Recurring Payment Reference you need to add one to the store aswell the only problem is that it needs to be at least $0.01 so no bank account or no money equals no testing.

<small>p.s. i made a feature request on tebex for dummy data which is used for testing webhooks with, if not i will consider making dummy data myself for the testing of the webhooks.</small>

So now that you created your dummy transaction you should head towards [payments](https://server.tebex.io/payments), here you will find all the purchases that are made. Then click on view and copy the Transaction ID within the details section.

Now head towards [webhooks](https://server.tebex.io/webhooks) and click on the 'send test' button. Select the 'Webhook Type' you want to test, paste the copied Transaction ID of your dummy transaction and click on the green 'send test' button.
