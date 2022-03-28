Router = {}

function Router.new(path)
	return setmetatable({
		path = path,
		sub_paths = {}
	}, {
		__index = Router,
		__call = function(self, method, path, handler)

			self.sub_paths[path] = Path.new(method, path, handler)

		end,
		__tostring = tostringMethod,
		__metatable = nil
	})
end

function Router:handler(req, res)

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

	-- set resoponse
	local Response = Res.new(res)

	-- remove the first dash
	local fullPath = string.sub(req.path, 2)

	-- split on the other dashes
	local sets = split(fullPath, '/')

	-- return when version is incorrect
	if self.path ~= sets[1] then Response(404, "incorrect base uri path used") end

	-- get the request path
	local path = split(sets[#sets], '?')

	-- set sub path
	local sub = self.sub_paths[path[1]]

	-- check if the request path exists
	if sub == nil then Response(404, "path doesn't exist") end

	-- return if method is invalid
	if req.method ~= sub.method then Response(404, "wrong method used") end

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
	return self.sub_paths[path[1]](params, Response)

end