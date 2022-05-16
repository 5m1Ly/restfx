# Fxs.core.string (_Shared Module_)
Here you'll find the documentation of the _Fxs.core.string table. This table contains methods to manipulate strings.

## Dependencies
### Resource Manifest
```lua
shared_scripts {
    "@fxs-api/lib/core/string.lua",
}
```

## Methods
_NOTE: this also contains the default Lua String Library._

### .split([heystack], [needle])
With this method you are able to split a string on a certain point.<br>

#### Parameters
| name     | value    | required | disc                                          |
|----------|----------|----------|-----------------------------------------------|
| heystack | String   | yes      | The string to search a specified character in |
| needle   | String   | yes      | The specified character to search for         |

#### Snippet
```lua
local str = Fxs.core.string.split('hallo-world!', '-')

print(str[1]) --> hallo
print(str[2]) --> world!
```
<hr>