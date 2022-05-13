-- Get resource data
local ResourceName = GetCurrentResourceName()
local ResourceVersion = GetResourceMetadata(ResourceName, "version")

-- Check resource version
Fsx.Resource.VersionCheck(ResourceName, ResourceVersion)

-- exporting function
local Cache = setmetatable({}, {
	__index = Cache,
	__call = function(self, name)
		if self[name] == nil then
			self[name] = Fsx.Rest.Build()
		end
		return self[name]
	end
})

exports('Route', function(...)
	local resource = GetInvokingResource() or GetCurrentResourceName()
	Cache(resource).Route(...)
end)

exports('Param', function(...)
	local resource = GetInvokingResource() or GetCurrentResourceName()
	Cache(resource).Param(...)
end)

exports('Fetch', function(...)
	local resource = GetInvokingResource() or GetCurrentResourceName()
	Cache(resource).Fetch(...)
end)

exports('Post', function(...)
	local resource = GetInvokingResource() or GetCurrentResourceName()
	Cache(resource).Post(...)
end)


