local restfx = exports.restfx:GetLibrary()

local aliases = {
	create = 'RegisterRequest',
	debug = 'PrettyDebug',
	repo = 'CheckGithubRepoVersion',
	http = {
		fetch = { 'TriggerRequest', 'GET',     {}},
		head  = { 'TriggerRequest', 'HEAD',    {}},
		post  = { 'TriggerRequest', 'POST',    {}},
		put   = { 'TriggerRequest', 'PUT',     {}},
		del   = { 'TriggerRequest', 'DELETE',  {}},
		conn  = { 'TriggerRequest', 'CONNECT', {}},
		opts  = { 'TriggerRequest', 'OPTIONS', {}},
		trace = { 'TriggerRequest', 'TRACE',   {}},
		patch = { 'TriggerRequest', 'PATCH',   {}}
	}
}

_G.RestFX = setmetatable({
	aliases = aliases
}, {
	__index = function(self, index)

		local alias = self.aliases[index]
		local method

		if type(alias) == 'table' then
			if type(next(alias)) == 'number' then
				method = alias[2]
				alias = alias[1]
			else
				self.aliases = alias
				return self
			end
		end

		alias = alias or index
		self.aliases = aliases

		if alias == 'TriggerRequest' then

			return function(uri, request, callback)

				if type(request) == 'function' then
					callback = request
					request = {}
				end

				restfx[alias](uri, {
					method = method,
					head = request.head or {},
					body = request.body or {}
				}, callback)

			end

		else
			return function(...)
				restfx[alias](...)
			end
		end

	end

})