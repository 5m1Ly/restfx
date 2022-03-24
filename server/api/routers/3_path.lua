Path = {}

function Path.new(path, handler)
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

function Path:addChildren(children)
	for key, child in pairs(children) do
		self.children[child.path] = self.new(child.path, child.handler)
	end
end