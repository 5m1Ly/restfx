# Fxs.core.table (_Shared Module_)
Here you'll find the documentation of the _Fxs.core.table_ table. This table contains methods to manipulate tables with.

## Resource Manifest
```lua
shared_scripts {
    "@fxs-api/lib/core/table.lua",
}
```

## Methods
_NOTE: this also contains the default Lua Table Library._

### .debug([table_x], [indent])
With this method you are able to print a table to the console.<br>

#### Parameters
| name     | value   | required | disc                                                            |
|----------|---------|----------|-----------------------------------------------------------------|
| table_x  | Table   | yes      | The table that needs to be printed to the console               |
| indent   | Number  | no       | The specified the amount of spaces in front of a table property |

#### Snippet
```lua
local table_x = {
	a = {
		a = 1,
		b = 2
	},
	b = 2,
	c = 3
}

Fxs.core.table.debug(table_x) --[[ console output
> a:
>     a: 1
>     b: 2
> b: 2
> c: 3
]]
```

### .expand([table_x], [table_y], [override])
With this method you are able to add to tables together.<br>

#### Parameters
| name     | value   | required | disc                                          |
|----------|---------|----------|-----------------------------------------------|
| table_x  | Table   | yes      | The string to search a specified character in |
| table_y  | Table   | yes      | The specified character to search for         |
| override | Boolean | no       | when set to true any value of the table_y table that has the same key as any value in the table_x table will be overwritten by the table_y table its value, default is false |

#### Snippet
```lua
local table_x = { a = 1, b = 2, c = 3 }
local table_y = { b = 1, c = 2, d = 3 }
local table_z = Fxs.core.table.expand(table_x, table_y, true)

print(table_z.a) --> 1
print(table_z.b) --> 1
print(table_z.c) --> 2
print(table_z.d) --> 3
```
<hr>