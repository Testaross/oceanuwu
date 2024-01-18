local ESX = exports.ocean_core:getSharedObject()
local ox_inventory = exports.ox_inventory

GoGo = true
RegisterServerEvent('baristamode')
AddEventHandler('baristamode', function(data)
    local src = source
    local count = ox_inventory:Search(src, 'count', data.ingredients)
    for k, v in pairs(count) do
        if v == 0 then
            GoGo = false
            break 
        end
        GoGo = true
    end
    if GoGo then
        ox_inventory:AddItem(src, data.name, 1)
        for k, v in pairs(data.ingredients) do
            exports.ox_inventory:RemoveItem(src, v, 1)
        end
    else
        print('fail')
    end
end)

RegisterServerEvent('CoffeeCup')
AddEventHandler('CoffeeCup', function()
    local src = source
    local xPlayer = ESX.GetPlayerFromId(src)
    xPlayer.addInventoryItem('cup', 1)
end)