Router = {}

function Router.new()
	return setmetatable({
		paths = {}
	}, {
		__index = Router,
		__call = function(self, method, path, handler)
			self.paths[path] = Path.new(method, path, handler)
		end,
		__tostring = tostringMethod,
		__metatable = nil
	})
end

function Router:handler(params, req, res)

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

	-- get the request path
	local path = split(fullPath, '?')

	-- set sub path
	local sub = self.paths[path[1]]

	-- check if the request path exists
	if sub == nil then Response(404, "path doesn't exist") end

	-- return if method is invalid
	if req.method ~= sub.method then Response(404, "wrong method used") end

	local prms = {}

	if path[2] ~= nil then

		local temp = split(path[2], '&')

		-- sort the parameters
		for k, v in pairs(temp) do

			local kv = split(v, '=')

			prms[kv[1]] = kv[2]

			table.remove(prms, 1)

		end

		-- trigger a global handler for a param
		for index, value in pairs(prms) do

			if params.global[index] ~= nil then

				-- set the retval to the param index
				prms[index] = params.global[index](value)

			end

		end

	end

	-- trigger the handler
	return self.paths[path[1]](prms, Response)

end