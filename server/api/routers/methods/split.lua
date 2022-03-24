function split(str, delimiter)

	if str == nil then return end

	local result = {}
	local from = 1
	local delim_from, delim_to = string.find(str, delimiter, from)

	while delim_from do
		result[#result+1] = string.sub(str, from, delim_from - 1)
		from = delim_to + 1
		delim_from, delim_to = string.find(str, delimiter, from)
	end

	result[#result+1] = string.sub(str, from)

	return result

end