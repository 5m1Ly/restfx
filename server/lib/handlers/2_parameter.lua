Params = {}

function Params.set()
	return setmetatable({
		params = {}
	}, {
		__index = Path,
		__add = function(self, param)
			if (param and param.index and param.handler) ~= nil then
				self.params[param.index] = param.handler
			end
		end,
		__call = function(self, index, ...)
			if self.params[index] ~= nil then
				self.params[index](...)
			end
		end,
		__tostring = tostringMethod,
		__metatable = nil
	})
end

