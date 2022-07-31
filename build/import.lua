local library = exports.restfx:GetLibrary()

local aliases = {
	route = 'RegisterRequest',
	http = {
		fetch = { 'TriggerRequest', 'GET',     {}},
		post  = { 'TriggerRequest', 'POST',    {}},
	}
}

_G.Api = setmetatable({
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
				library[alias](uri, {
					method = method,
					head = request.head or {},
					body = request.body or {}
				}, callback)
			end
		else
			return function(...)
				library[alias](...)
			end
		end
	end
})