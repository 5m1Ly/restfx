Fsx = Fsx or {}
Fsx.core = Fsx.core or {}

-- Creates class mimics
---@param xTable table @ expands the default table
---@param xMeta table @ expands the default metatable
---@param Default boolean @ when set to true it overrides the default values of the table and metatable
---@return table
Fsx.core.class = function(self, xTable, xMeta, Default)

	-- make sure to set default value for the Default param
	Default = (Default ~= nil and type(Default) == 'boolean') and Default or false

	-- Build the returned table
	xTable = (xTable ~= nil and type(xTable) == 'table') and xTable or {}

	-- Build the returned metatable
	xMeta = Fsx.core.table.expand({
		__index = xTable,
		__tostring = function(self)
			print('start of debug\n')
			Fsx.core.table.debug(self, 0)
			return '\nend of debug'
		end,
		__metatable = nil
	}, (
		(xMeta ~= nil and ((type(xMeta) == 'table' and xMeta) or (type(xMeta) == 'function' and { __call = xMeta })) or {})
	), Default)

	return setmetatable(xTable, xMeta)

end