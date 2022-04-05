Parameter = {}

function Parameter.new()
	return setmetatable({
		global = {}
	}, {
		__index = Parameter,
		__call = function(self, name, handler, bool)
			local param = self.global[name]
			if param == nil or (bool and param ~= nil) then
				self.global[name] = handler
			else
				error('the parameter you tried to create a handler for all ready exists', 0)
			end
		end,
		__tostring = __meta.tostring,
		__metatable = nil
	})
end

