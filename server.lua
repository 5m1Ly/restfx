QBCore = nil
Citizen.CreateThread(function() 
    while true do
        Citizen.Wait(1)
        if QBCore == nil then
            TriggerEvent("QBCore:GetObject", function(obj) QBCore = obj end)    
            Citizen.Wait(200)
        end
    end
end)

function verify_token(req, res)
    print("[qb-api] api-request received for: " .. req.path)
    local token = req.body['token']
    if (token == nil) then
        return fail(req, res)
    end
    exports['ghmattimysql']:execute("SELECT * FROM api_tokens WHERE token = @token", {['@token'] = token}, function(result)
        data =  result[1]
        if data == nil then
            return fail(req, res)
        end
        -- Delete the API key after being used for safety
        exports['ghmattimysql']:execute("DELETE FROM api_tokens WHERE token = @token", {['@token'] = data.token}, function() 
			if (data.purpose ~= req.path) then
				print("[qb-api] api-key purpose failed! Was "..req.path.." but should be "..data.purpose)
				return fail(req, res)
			end
			return handleRequest(req, res)
		end);
    end);
    return false
end

function fail(req, res)
    res.send(json.encode({success=false}))
    return false
end

SetHttpHandler(function(req, res)
    req.path = string.sub(req.path, 2)
    res.writeHead(200, { ["Access-Control-Allow-Origin"] = "*"} )
    if req.method == 'POST' then
        return req.setDataHandler(function (body)
            req.body = json.decode(body)
            return verify_token(req, res)
        end)
    end
    return fail(req, res)
end)

function handleRequest(req, res)
    local path = req.path
    print("[qb-api] executing api call: " .. req.path)
    if path == "kick" then
        return handleKick(req, res)
    elseif path == "kickall" then
        return handleKickAll(req, res)
    elseif path == "announce" then
        return handleAnnounce(req, res)
    elseif path == "revive" then
        return handleRevive(req, res)
    elseif path == "reportr" then
        return handleReportr(req, res)
    end
end

function handleReportr(req, res)
    local playerId = req.body['playerId']
    local message = req.body['message']
    if ((playerId == nil) or (message == nil)) then
        return fail(req, res)
    end
    local OtherPlayer = QBCore.Functions.GetPlayer(playerId)
    if OtherPlayer ~= nil then
        TriggerClientEvent('chatMessage', playerId, "ADMIN - Staffpanel ", "warning", msg)
        for k, v in pairs(QBCore.Functions.GetPlayers()) do
            if QBCore.Functions.HasPermission(v, "admin") then
                if QBCore.Functions.IsOptin(v) then
                    TriggerClientEvent('chatMessage', v, "ReportReply(Staffpanel) ", "warning", msg)
                end
            end
        end
    else
        res.send(json.encode({success=false, error="Player not online"}))
    end
    res.send(json.encode({success=true}))
    return true
end

function handleRevive(req, res)
    local playerId = req.body['playerId']
    if ((playerId == nil)) then
        return fail(req, res)
    end
    TriggerEvent("qb-admin:server:revivePlayer", playerId)
    res.send(json.encode({success=true}))
    return true
end

function handleAnnounce(req, res)
    local message = req.body['message']
    if (message == nil) then
        return fail(req, res)
    end
    TriggerClientEvent('chatMessage', -1, "SYSTEM", "error", message)
    res.send(json.encode({success=true}))
    return true
end

function handleKickAll(req, res)
    local reason = req.body['reason']
    if (reason == nil) then
        return fail(req, res)
    end
	for k, v in pairs(QBCore.Functions.GetPlayers()) do
		if v ~= src then 
			DropPlayer(v, "Je bent gekicked uit de server:\n"..reason.."\n\n🔸 Kijk op onze discord voor meer informatie: https://discord.gg/Ttr6fY6")
		end
	end
    res.send(json.encode({success=true}))
    return true
end

function handleKick(req, res)
    local playerId = req.body['playerId']
    local reason = req.body['reason']
    if ((playerId == nil) or (reason == nil)) then
        return fail(req, res)
    end
    DropPlayer(playerId, "Je bent gekicked uit de server:\n"..reason.."\n\n🔸 Kijk op onze discord voor meer informatie: https://discord.gg/Ttr6fY6")
    res.send(json.encode({success=true}))
    return true
end