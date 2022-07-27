--[[ ====================================== EXTENDED LUA LIBRARIES ====================================== ]]

--- STRING LIB ---

---@param heystack string the string to search the specified char in.
---@param needle string the specified char to look for within the given string
function string.split(heystack, needle)
	local result = { }
	local from  = 1
	local delim_from, delim_to = string.find( heystack, needle, from  )
	while delim_from do
		table.insert( result, string.sub( heystack, from , delim_from-1 ) )
		from  = delim_to + 1
		delim_from, delim_to = string.find( heystack, needle, from  )
	end
	table.insert( result, string.sub( heystack, from  ) )
	return result
end
exports('SplitString', string.split)

--- prints a table in a formatted way
---@param table_x table @ The table you want to print to the console
---@param indent number @ The amount of tabs in front of a property
---@return string
function string.tableToString(_table, indent)
	indent = indent or 0
	local str = ''
	local spcs = string.rep("    ", indent - 1)
	for k, v in pairs(_table) do
		local _type = type(v)
		str = str .. ("%s^3%s:^0 "):format(spcs.."    ", k)
		if _type == "table" then
			str = str..'{\n'
			str = str..debug.tableString(v, indent + 1)
		elseif _type == 'boolean' then
			str = str..("^1%s^0"):format(v)
		elseif _type == 'function' then
			str = str..("^9%s^0"):format(v)
		elseif _type == 'number' then
			str = str..("^5%s^0"):format(v)
		elseif _type == 'string' then
			str = str..("^2'%s'^0"):format(v)
		else
			str = str..("^2%s^0"):format(v)
		end
		str = str..(next(_table, k) ~= nil and ',' or '')..'\n'
	end
	str = str..spcs..'}'
	return str
end

--- DEBUG LIB ---

function debug.PrettyPrintTable(_table)
	print('$$$$$$$$$$$$$$$$$$ START OF DEBUG $$$$$$$$$$$$$$$$$$')
	print(string.tableToString(_table, 1))
	print('$$$$$$$$$$$$$$$$$$$ END OF DEBUG $$$$$$$$$$$$$$$$$$$')
end

--[[ =========================================== ACTUAL LIBRARY ========================================= ]]

local RestFX = setmetatable({
	calls = 0,
	builts = {}
}, {
	__call = function(self, req, res)

		local paths = string.split(req.path, '/')
		table.remove(paths, 1)

		local reqpath = paths[1]
		table.remove(paths, 1)

		local reqparams = paths

		local reqdata
		req.setDataHandler(function(data)
			reqdata = json.decode(data)
		end)

		if reqpath == 'tebex' then
			res.writeHead(200)
			res.send(json.encode({ id = reqdata.id }))
		end

	end
})

SetHttpHandler(function(req, res) RestFX(req, res) end)