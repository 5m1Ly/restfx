Fsx = Fsx or {}
Fsx.core = Fsx.core or {}

-- contains table functions
Fsx.core.table = table or {}

-- adds 2 tables together
---@param table_x table @ The table you want to expand with the table given to table_y
---@param table_y table @ The table that will be added to the table given to table_x
---@param override boolean @ when set to true any value of the table_y table that has the same key as any value in the table_x table will be overwritten by the table_y table its value, default is false
---@return table
Fsx.core.table.expand = function(table_x, table_y, override)
	for key, value in pairs(table_y) do
		table_x[key] = not override and (table_x[key] or value) or value
	end
	return table_x
end

-- Prints a table in a formatted way
---@param table_x table @ The table you want to print to the console
---@param indent number @ The amount of tabs in front of a property
---@return string
Fsx.core.table.debug = function(table_x, indent)
	indent = indent or 0
	for k, v in pairs(table_x) do
		local tblType = type(v)
		local formatting = ("%s ^3%s:^0"):format(string.rep("  ", indent), k)
		if tblType == "table" then
			print(formatting)
			Fsx.core.table.debug(v, indent + 1)
		elseif tblType == 'boolean' then
			print(("%s^1 %s ^0"):format(formatting, v))
		elseif tblType == "function" then
			print(("%s^9 %s ^0"):format(formatting, v))
		elseif tblType == 'number' then
			print(("%s^5 %s ^0"):format(formatting, v))
		elseif tblType == 'string' then
			print(("%s ^2'%s' ^0"):format(formatting, v))
		else
			print(("%s^2 %s ^0"):format(formatting, v))
		end
	end
end