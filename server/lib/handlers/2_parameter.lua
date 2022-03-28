Parameter = {}

function Parameter.set()
	return setmetatable({
		global = {}
	}, {
		__index = Parameter,
		__call = function(self, name, handler, bool)
			local param = self.global[name]
			if param == nil or (param ~= nil and bool) then
				self.global[name] = handler
			else
				error('the parameter you tried to create a handler for all ready exists', 0)
			end
		end,
		__tostring = tostringMethod,
		__metatable = nil
	})
end

