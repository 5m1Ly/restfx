Fsx = Fsx or {}
Fsx.world = Fsx.world or {}

Fsx.world.vehicle = {}

local function LoadModel(model)
    if HasModelLoaded(model) then return end
	RequestModel(model)
	while not HasModelLoaded(model) do
		Wait(0)
	end
end

Fsx.world.vehicle.onBlacklist = function(vehicle_id)
	local vhash = type(vehicle_id) == 'string' and GetHashKey(vehicle_id) or vehicle_id
	local retval = false
	if Fsx.config.games.gtav.vehicle.blacklist[vhash] ~= nil then
		retval = true
	end
	return retval
end

Fsx.world.vehicle.spawn = function(model, coords, networked, teleportInto, callback)
    local ped = PlayerPedId()
	model = type(model) == 'string' and GetHashKey(model) or model
	if Fsx.world.vehicle.onBlacklist(model) then return end
	if not IsModelInCdimage(model) then return end
	if coords then
        coords = type(coords) == 'table' and ((coords.h or coords.w) ~= nil and vec4(coords.x, coords.y, coords.z, (coords.h or coords.w)) or vec3(coords.x, coords.y, coords.z)) or coords
    else
        coords = GetEntityCoords(ped)
    end
	LoadModel(model)
	local veh = CreateVehicle(model, coords.x, coords.y, coords.z, coords.w, (networked or true), false)
	local netid = NetworkGetNetworkIdFromEntity(veh)
	SetVehicleHasBeenOwnedByPlayer(veh, true)
    SetNetworkIdCanMigrate(netid, true)
    SetVehicleNeedsToBeHotwired(veh, false)
    SetVehRadioStation(veh, 'OFF')
    SetVehicleFuelLevel(veh, 100.0)
    SetModelAsNoLongerNeeded(model)
	if teleportInto then TaskWarpPedIntoVehicle(PlayerPedId(), veh, -1) end
	if callback then callback(veh) end
end

Fsx.world.vehicle.clearspawn = function(coords, radius)
    if coords then
        coords = type(coords) == 'table' and vec3(coords.x, coords.y, coords.z) or coords
    else
        coords = GetEntityCoords(PlayerPedId())
    end
    local vehicles = GetGamePool('CVehicle')
    local closeVeh = {}
    for i = 1, #vehicles, 1 do
        local vehicleCoords = GetEntityCoords(vehicles[i])
        local distance = #(vehicleCoords - coords)
        if distance <= radius then
            closeVeh[#closeVeh + 1] = vehicles[i]
        end
    end
    if #closeVeh > 0 then return false, closeVeh[1] end
    return true
end

Fsx.world.vehicle.despawn = function(vehicle)
    SetEntityAsMissionEntity(vehicle, true, true)
    DeleteVehicle(vehicle)
end