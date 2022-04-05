__meta = {}

function __meta.methods()
	return setmetatable({}, { __index = __meta })
end

function __meta.tostring(self)

	local function tPrint(tbl, indent)

		indent = indent or 0

		for k, v in pairs(tbl) do

			local tblType = type(v)
			local formatting = ("%s ^3%s:^0"):format(string.rep("  ", indent), k)

			if tblType == "table" then
				print(formatting)
				tPrint(v, indent + 1)
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

		return ''

	end

	print('start of debug\n')

	return tPrint(self, 0)..'\nend of debug'

end

function __meta.split(heystack, needle)

	local result = {}
	local from = 1
	local delim_from, delim_to = string.find(heystack, needle, from)

	while delim_from do
		result[#result+1] = string.sub(heystack, from, delim_from - 1)
		from = delim_to + 1
		delim_from, delim_to = string.find(heystack, needle, from)
	end

	result[#result+1] = string.sub(heystack, from)

	return result

end