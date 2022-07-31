local library = exports.restfx:getapi()

local aliases = {
	http = {
		fetch = { 'request', 'GET',     {}},
		post  = { 'request', 'POST',    {}},
	}
}

_G.api = setmetatable({
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
		if alias == 'request' then
			return function(uri, cb, req)
				local r = {
					method = method,
					body = {},
					head = {}
				}
				for k in next, r do
					if req == nil then break end
					if req[k] ~= nil and k ~= 'method' then r[k] = req[k] end
				end
				library[alias](uri, r, cb)
			end
		else
			return function(...)
				library[alias](...)
			end
		end
	end
})