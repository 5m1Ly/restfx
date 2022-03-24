Router = {}

function Router.new(path)
	return setmetatable({
		path = path,
		sub_paths = {}
	}, {
		__index = Router,
		__call = function(self, method, path, handler, children)

			self.sub_paths[path] = Path.new(path, handler)

			if children ~= nil then
				self.sub_paths[path]:addChildren(children)
			end

		end,
		__tostring = tostringMethod,
		__metatable = nil
	})
end

function Router:handler(req, res)

	local Response = Res.new(res)

	-- remove the first dash
	local fullPath = string.sub(req.path, 2)

	-- split on the other dashes
	local sets = split(fullPath, '/')

	-- return when version is incorrect
	if self.path ~= sets[1] then
		Response(404)
	end

	-- get the request path
	local path = split(sets[2], '?')

	-- check if the request path exists
	if self.sub_paths[path[1]] == nil then
		Response(404)
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
	return self.sub_paths[path[1]](params, Response)

end