# Fxs.config.http_status_codes (_Server Module_)
Here you'll find the documentation of the _Fxs.config.http\_status\_codes_ table. This table contains the configuration used for diffrent modules.

## Resource Manifest
```lua
shared_scripts {
    "@fxs-api/lib/config/http_status_codes.lua",
}
```

## File Content
```lua
Fsx.config.http_status_code = {
	-- [status code] = "status message"
	[100] = "Continue",
	[101] = "Switching Protocols",
	[103] = "Early Hints",
	[200] = "OK",
	[201] = "Created",
	-- etc..
}
```
