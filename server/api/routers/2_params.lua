Params = {}

function Params.new()
	return setmetatable({
		path = path,
		handler = handler,
		children = {}
	}, {
		__index = Path,
		__call = function(self, p, r)
			return self.handler(p, r)
		end,
		__tostring = tostringMethod,
		__metatable = nil
	})
end