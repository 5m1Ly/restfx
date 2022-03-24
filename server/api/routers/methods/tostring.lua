function tostringMethod(self)

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

	return 'start of debug\n'..tPrint(self, 0)..'\nend of debug'

end