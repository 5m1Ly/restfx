local store = {}

store = setmetatable(store, {
	__index = store,
	__call = function(self, name)
		if self[name] == nil then
			self[name] = api.create()
		end
		return self[name]
	end
})

-- exporting function

exports('route', function(name, ...)
	store(name).route(...)
end)

exports('param', function(name, ...)
	store(name).param(...)
end)

exports('fetch', function(name, ...)
	store(name).fetch(...)
end)

exports('post', function(name, ...)
	store(name).post(...)
end)


