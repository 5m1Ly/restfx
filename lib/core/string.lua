Fsx = Fsx or {}
Fsx.core = Fsx.core or {}

-- contains string functions
Fsx.core.string = string

-- Splits a string on the given character
Fsx.core.string.split = function(heystack, needle)
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