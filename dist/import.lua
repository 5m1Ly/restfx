local aliases = {
	Create = 'RegisterRequest',
	Debug = 'PrettyDebug'
}

_G.FxAPI = setmetatable({
	aliases = aliases
}, {
	__index = function(self, index)
		local alias = self.aliases[index]
		if type(alias) == 'table' then
			self.aliases = alias
			return self
		end
		self.aliases = aliases
		return function(...)
			exports.restfx[alias](nil, ...)
		end
	end
})