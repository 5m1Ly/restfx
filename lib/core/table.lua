Fsx = Fsx or {}
Fsx.core = Fsx.core or {}

-- contains table functions
Fsx.core.table = table or {}

-- adds 2 tables together
---@param tX table @ The table you want to expand with the table given to tY
---@param tY table @ The table that will be added to the table given to tX
---@param override boolean @ when set to true any value of the tY table that has the same key as any value in the tx table will be overwritten by the tY table its value, default is false
---@return table
Fsx.core.table.expand = function(tX, tY, override)
	for key, value in pairs(tY) do
		tX[key] = not override and (tX[key] or value) or value
	end
	return tX
end

-- Prints a table in a formatted way
---@param tbl table @ The table you want to print to the console
---@param indent number @ The amount of tabs in front of a property
---@return string
Fsx.core.table.debug = function(tbl, indent)
	indent = indent or 0
	for k, v in pairs(tbl) do
		local tblType = type(v)
		local formatting = ("%s ^3%s:^0"):format(string.rep("  ", indent), k)
		if tblType == "table" then
			print(formatting)
			Fsx.Core.Table.Print(v, indent + 1)
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