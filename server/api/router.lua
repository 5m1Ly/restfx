_router = {}

function _router.new(path)

	return setmetatable({
		path = path,
		sub_paths = {}
	}, {
		__index = _router,
		__call = function(self, path, handler)
			self.sub_paths[path] = _path.new(path, handler)
		end,
		__tostring = function(self)
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
			end
			tPrint(self, 0)
			return 'Debug print for route: '..path
		end
	})

end

function _router:handler(req, res)

	local function split(str, delimiter)

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

	local fullPath = string.sub(req.path, 2)
	local sets = split(fullPath, '/')

	-- return when version is incorrect
	if self.path ~= sets[1] then
		res.send(
			json.encode(
				{ status = '400', msg = 'invalid version' }
			)
		)
	end

	-- get the request path
	local path = split(sets[2], '?')

	-- check if the request path exists
	if self.sub_paths[path[1]] == nil then
		res.send(
			json.encode(
				{ status = '400', msg = 'invalid path' }
			)
		)
	end

	local params = {}

	if path[2] ~= nil then

		local temp = split(path[2], '&')



		for k, v in pairs(temp) do
			local kv = split(v, '=')
			params[kv[1]] = kv[2]
			table.remove(params, 1)
		end

	end

	-- trigger the handler
	return self.sub_paths[path[1]](params, res)

end