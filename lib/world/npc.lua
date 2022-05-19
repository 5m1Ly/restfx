Fsx = Fsx or {}
Fsx.world = Fsx.world or {}

Fsx.world.npc = {}

local function LoadModel(model)
    if HasModelLoaded(model) then return end
	RequestModel(model)
	while not HasModelLoaded(model) do
		Wait(0)
	end
end

Fsx.world.npc.spawn = function(model, coords, freeze, networked, callback)

	model = type(model) == 'string' and GetHashKey(model) or model

	if not IsModelInCdimage(model) then return end

	if coords then
        coords = type(coords) == 'table' and ((coords.h or coords.w) ~= nil and vec4(coords.x, coords.y, coords.z, (coords.h or coords.w)) or vec3(coords.x, coords.y, coords.z)) or coords
    else
        coords = GetEntityCoords(ped)
    end

	LoadModel(model)

	local ped = CreatePed(nil, model, coords.x, coords.y, coords.z, coords.w, (networked or true), false)
	local netid = NetworkGetNetworkIdFromEntity(ped)

    SetNetworkIdCanMigrate(netid, true)

	FreezeEntityPosition(ped, (freeze or false))

    SetModelAsNoLongerNeeded(model)

	if callback then callback(ped) end

end