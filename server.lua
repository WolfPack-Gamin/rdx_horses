RDX = nil
TriggerEvent('rdx:getSharedObject', function(obj) RDX = obj end)

-- Consume
RegisterServerEvent("rdx_horses:consume")
AddEventHandler("rdx_horses:consume", function(item)
   local xPlayer = RDX.GetPlayerFromId(source)   
   xPlayer.removeInventoryItem(item, 1)    
end) -- Don't Touch

-- Items
RDX.RegisterUsableItem('item_horse_brush', function(source)
    TriggerClientEvent("rdx_horses:Brush", source)	
end)
Item

-- Add Items : Start

-- Health Items
RDX.RegisterUsableItem(Item.Healing[1], function(source)
    local increase = Item.Power[2] -- = 30
    local item     =  Item.Healing[1]  
    TriggerClientEvent("rdx_horses:givehealth", source, increase, item)
end)

RDX.RegisterUsableItem(Item.Healing[2], function(source)
    local increase = Item.Power[4] -- = 30
    local item     =  Item.Healing[2]  
    TriggerClientEvent("rdx_horses:givehealth", source, increase, item)
end)

RDX.RegisterUsableItem(Item.Healing[3], function(source)
    local increase = Item.Power[6] -- = 30
    local item     =  Item.Healing[3]  
    TriggerClientEvent("rdx_horses:givehealth", source, increase, item)
end)

-- Stamina
RDX.RegisterUsableItem(Item.Stamina[1], function(source)
    local increase = Item.Power[1] -- = 10
    local item     =  Item.Stamina[1]   
    TriggerClientEvent("rdx_horses:givestamina", source, increase, item)
end)

RDX.RegisterUsableItem(Item.Stamina[2], function(source)
    local increase = Item.Power[2] -- = 20
    local item     =  Item.StaminaItem2   
    TriggerClientEvent("rdx_horses:givestamina", source, increase, item)
end)

RDX.RegisterUsableItem(Item.Stamina[3], function(source)
    local increase = Item.Power[4] -- = 20
    local item     =  Item.Stamina[3]   
    TriggerClientEvent("rdx_horses:givestamina", source, increase, item)
end)

-- Add Items : End


