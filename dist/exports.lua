-- Get resource data
local ResourceName = GetCurrentResourceName()
local ResourceVersion = GetResourceMetadata(ResourceName, "version")

-- Check resource version
Fxs.Resource.VersionCheck(ResourceName, ResourceVersion)

-- exporting function

exports('route', function(...)
	local resource = GetInvokingResource() or GetCurrentResourceName()
	Cache(resource).route(...)
end)

exports('param', function(...)
	local resource = GetInvokingResource() or GetCurrentResourceName()
	Cache(resource).param(...)
end)

exports('fetch', function(...)
	local resource = GetInvokingResource() or GetCurrentResourceName()
	Cache(resource).fetch(...)
end)

exports('post', function(...)
	local resource = GetInvokingResource() or GetCurrentResourceName()
	Cache(resource).post(...)
end)


