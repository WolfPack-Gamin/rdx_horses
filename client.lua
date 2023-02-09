RDX = nil
Citizen.CreateThread(function()	while RDX == nil do TriggerEvent('rdx:getSharedObject', function(obj) RDX = obj end) Citizen.Wait(300) end end)

-- Brush
RegisterNetEvent('rdx_horses:Brush')
AddEventHandler('rdx_horses:Brush', function(horse)
    local player = PlayerPedId()
    local horse = GetLastMount(player)
    local coords = GetEntityCoords(player)
    local coordshorse = GetEntityCoords(horse)
    local distance = #(coords - coordshorse)        
        
    if distance < 2.0 then            
            Brush(player,horse)        
    elseif IsPedOnMount(player) then
            Brush(player,horse)
        
    end
end)

function Brush(player,horse)
    Citizen.InvokeNative(0xCD181A959CFDD7F4, player, horse, GetHashKey("INTERACTION_BRUSH"), 0, 0)
    Wait(8000)
    Citizen.InvokeNative(0xE3144B932DFDFF65, horse, 0.0, -1, 1, 1)
    ClearPedEnvDirt(horse)
    ClearPedDamageDecalByZone(horse ,10 ,"ALL")
    ClearPedBloodDamage(horse)
    Citizen.InvokeNative(0xD8544F6260F5F01E, horse, 10)
end

-- Restore Health
RegisterNetEvent('rdx_horses:givehealth')   
AddEventHandler('rdx_horses:givehealth', function(increase,item)
    local player = PlayerPedId()
    local horse = GetLastMount(player)
    local coords = GetEntityCoords(player)
    local coordshorse = GetEntityCoords(horse)
    local distance = #(coords - coordshorse)
 
    if distance < 2.0 then        
            giveHorseHealth(player, horse, increase, item)        
    elseif IsPedOnMount(player) then           
            giveHorseHealth(player, horse, increase, item) 
    end
end)

-- Restore Stamina
RegisterNetEvent('rdx_horses:givestamina')   
AddEventHandler('rdx_horses:givestamina', function(increase,item)
    local player = PlayerPedId()
    local horse = GetLastMount(player)
    local coords = GetEntityCoords(player)
    local coordshorse = GetEntityCoords(horse)
    local distance = #(coords - coordshorse)
 
    if distance < 2.0 then        
            Feed(player, horse, increase, item)        
    elseif IsPedOnMount(player) then           
            Feed(player, horse, increase, item) 
    end
end)

function giveHorseHealth(player, horse, increase, item)
    TriggerServerEvent("rdx_horses:Consume", item)
    Citizen.InvokeNative(0xCD181A959CFDD7F4, player, horse, -224471938, 0, 0)
    Wait(5000)
    PlaySoundFrontend("Core_Fill_Up", "Consumption_Sounds", true, 0)
    local Health = GetAttributeCoreValue(horse, 0)
    local newHealth = Health + increase
    Citizen.InvokeNative(0xC6258F41D86676E0, horse, 0, newHealth) --core
end

function giveHorseStamina(player, horse, increase, item)
    TriggerServerEvent("rdx_horses:Consume", item)
    Citizen.InvokeNative(0xCD181A959CFDD7F4, player, horse, -224471938, 0, 0)
    Wait(5000)
    PlaySoundFrontend("Core_Fill_Up", "Consumption_Sounds", true, 0)
    local Stamina = GetAttributeCoreValue(horse, 0)
    local newStamina = Stamina + increase
    Citizen.InvokeNative(0xC6258F41D86676E0, horse, 1, newStamina) --core
end

function GetLastMount(ped)
	return Citizen.InvokeNative(0x4C8B59171957BCF7, ped)
end
