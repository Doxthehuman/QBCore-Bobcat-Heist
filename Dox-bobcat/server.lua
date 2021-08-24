DoxCore = nil

TriggerEvent('DoxCore:GetObject', function(obj) DoxCore = obj end)

DoxCore.Functions.CreateCallback('Dox-bobcat:server:getCops', function(source, cb)
	local cops = 0
    for k, v in pairs(DoxCore.Functions.GetPlayers()) do
        local Player = DoxCore.Functions.GetPlayer(v)
        if Player ~= nil then 
            if (Player.PlayerData.job.name == "police" and Player.PlayerData.job.onduty) then
                cops = cops + 1
            end
        end
	end
	cb(cops)
end)

RegisterServerEvent("Dox-particleserver")
AddEventHandler("Dox-particleserver", function(method)
    TriggerClientEvent("Dox-ptfxparticle", -1, method)
end)

RegisterServerEvent("Dox-particleserversec")
AddEventHandler("Dox-particleserversec", function(method)
    TriggerClientEvent("Dox-ptfxparticlesec", -1, method)
end)


DoxCore.Functions.CreateUseableItem("security_card_01", function(source, item)
    local Player = DoxCore.Functions.GetPlayer(source)
        TriggerClientEvent("Dox-bobcatthirddoor", source)
		TriggerClientEvent('DoxCore:Notify', source, "Door Unlocked.", "success")
end)

DoxCore.Functions.CreateUseableItem("thermitec", function(source, item)
    local Player = DoxCore.Functions.GetPlayer(source)
	if Player.Functions.GetItemByName('lighter') ~= nil then
        TriggerClientEvent("Dox-minigamedoor2", source)
    else
        TriggerClientEvent('DoxCore:Notify', source, "You are missing something to light the thermite..", "error")
    end
end)

DoxCore.Functions.CreateUseableItem("thermite", function(source, item)
    local Player = DoxCore.Functions.GetPlayer(source)
	if Player.Functions.GetItemByName('lighter') ~= nil then
        TriggerClientEvent("Dox-firstdoor", source)
    else
        TriggerClientEvent('DoxCore:Notify', source, "You are missing something to light the thermite..", "error")
    end
end)


local ItemTable = {
    "weapon_combatpistol",
    "weapon_assaultrifle",
    "weapon_smg",
    "weapon_heavypistol",
    "weapon_carbinerifle",
    "weapon_machinepistol",
    "weapon_pistol_mk2",
}

RegisterServerEvent("Dox-bobcat:server:loot")
AddEventHandler("Dox-bobcat:server:loot", function()
    local src = source
    local Player = DoxCore.Functions.GetPlayer(src)
    for i = 1, math.random(1, 8), 1 do
        local randItem = ItemTable[math.random(1, #ItemTable)]
        Player.Functions.AddItem(randItem, 1)
        TriggerClientEvent('inventory:client:ItemBox', src, DoxCore.Shared.Items[randItem], 'add')
        Citizen.Wait(500)
    end
end)	