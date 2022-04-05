Router = {}

function Router.new()
	return setmetatable({
		paths = {}
	}, {
		__index = Router,
		__call = function(self, method, path, handler)
			self.paths[path] = Path.new(method, path, handler)
		end,
		__tostring = __meta.tostring,
		__metatable = nil
	})
end

function Router:handler(params, req, res)

	-- set resoponse
	local Response = Res.new(res)

	-- remove the first dash
	local fullPath = string.sub(req.path, 2)

	-- get the request path
	local path = __meta.split(fullPath, '?')

	-- set sub path
	local sub = self.paths[path[1]]

	-- check if the request path exists
	if sub == nil then
		Response(501)
		return false
	end

	-- return if method is invalid
	if req.method ~= sub.method then
		Response(501)
		return false
	end

	local prms = {}

	if path[2] ~= nil then

		local temp = __meta.split(path[2], '&')

		-- sort the parameters
		for k, v in pairs(temp) do
			local kv = __meta.split(v, '=')
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