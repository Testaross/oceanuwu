-- exports.ox_target:addBoxZone({
-- 	name = "storecr1",
-- 	coords = vec3(-3243.75, 1001.0, 13.0),
-- 	size = vec3(0.5, 0.25, 0.25),
-- 	rotation = 358.0,
--     options = {
-- 		{
-- 			icon = 'fa-solid fa-lock',
-- 			label = "Rob Store",
--             canInteract = function(entity, distance, coords, name)
--                 local hasPick = exports.ox_inventory:Search('count', 'advanced_lockpick')
--                 local hasBag = exports.ox_inventory:Search('count', 'largebag')
--                 if hasPick and hasBag >= 1 then
--                     return true
--                 else
--                     return false
--                 end
--             end,
--             onSelect = function(data)
--                 TriggerEvent('StoreRobbery')
--             end
-- 		}
-- 	},
-- })exports.ox_target:addBoxZone({
-- 	name = "storecr1",
-- 	coords = vec3(-3243.75, 1001.0, 13.0),
-- 	size = vec3(0.5, 0.25, 0.25),
-- 	rotation = 358.0,
--     options = {
-- 		{
-- 			icon = 'fa-solid fa-lock',
-- 			label = "Rob Store",
--             canInteract = function(entity, distance, coords, name)
--                 local hasPick = exports.ox_inventory:Search('count', 'advanced_lockpick')
--                 local hasBag = exports.ox_inventory:Search('count', 'largebag')
--                 if hasPick and hasBag >= 1 then
--                     return true
--                 else
--                     return false
--                 end
--             end,
--             onSelect = function(data)
--                 TriggerEvent('StoreRobbery')
--             end
-- 		}
-- 	},
-- })
--lib context menu for creating coffee
RegisterNetEvent('UWU:coffee')
AddEventHandler('UWU:coffee', function()
    lib.registerContext({
        id = 'CoffeeDrinkMenu',
        title = 'Espresso Machine',
        options = {
            {
                title = 'Matcha Coffee',
                description = 'Requirements: Matcha Powder, Coffee Beans, sugar, Milk, Cup',
                arrow = true,
                args = { name = 'matcha',
                ingredients = {'mug', 'gin', 'juice' }}
            },
            {
                title = 'Booba Milk Tea',
                description = 'Requirements: Tea, Tapioca Pearls, honey, Milk, Cup',
                arrow = true,
                event = 'coffeedrinks',
                args = { name = 'booba',
                ingredients = {'mug', 'gin', 'juice' }}
            },
            {
                title = 'Sweet Herbal Tea',
                description = 'Requirements: Green tea, water, special herbs, sugar, cup',
                arrow = true,
                event = 'coffeedrinks',
                args = { name = 'sweattea',
                ingredients = {'tallglass', 'gin', 'juice' }}
            },
            {
                title = ' Hot Chocolate',
                description = 'Requirements: Cocoa Powder, water, milk, cup',
                arrow = true,
                event = 'coffeedrinks',
                args = { name = 'hotchoc',
                ingredients = {'tallglass', 'gin', 'juice' }}
            },
        },
    })
    lib.showContext('CoffeeDrinkMenu')
end)

AddEventHandler('coffeedrinks', function(data)
    TriggerServerEvent('baristamode',data)
end)

--lib context menu for creating coffee


--bakingmenu
RegisterNetEvent('UWU:baking')
AddEventHandler('UWU:baking', function()
    lib.registerContext({
        id = 'bakingmenu',
        title = 'Stovetop',
        options = {
            {
                title = 'Om-Nom Omurice',
                description = 'Requirements: Matcha Powder, Coffee Beans, sugar, Milk, Cup',
                arrow = true,
                args = { name = 'matcha',
                ingredients = {'mug', 'gin', 'juice' }}
            },
            {
                title = 'Kira Kira Curry',
                description = 'Requirements: Tea, Tapioca Pearls, honey, Milk, Cup',
                arrow = true,
                event = 'coffeedrinks',
                args = { name = 'booba',
                ingredients = {'mug', 'gin', 'juice' }}
            },
            {
                title = 'Sugoi Katsu Sando',
                description = 'Requirements: Green tea, water, special herbs, sugar, cup',
                arrow = true,
                event = 'coffeedrinks',
                args = { name = 'sweattea',
                ingredients = {'tallglass', 'gin', 'juice' }}
            },
            {
                title = 'Hamburg Steak',
                description = 'Requirements: Cocoa Powder, water, milk, cup',
                arrow = true,
                event = 'coffeedrinks',
                args = { name = 'hotchoc',
                ingredients = {'tallglass', 'gin', 'juice' }}
            },
            {
                title = ' Doki Doki Pancakes',
                description = 'Requirements: Cocoa Powder, water, milk, cup',
                arrow = true,
                event = 'coffeedrinks',
                args = { name = 'hotchoc',
                ingredients = {'tallglass', 'gin', 'juice' }}
            },
        },
    })
    lib.showContext('bakingmenu')
end)


RegisterNetEvent('UWU:desserts')
AddEventHandler('UWU:desserts', function()
    lib.registerContext({
        id = 'dessertsmenu',
        title = 'Stovetop',
        options = {
            {
                title = 'Strawbelly Shortcake',
                description = 'Requirements: Matcha Powder, Coffee Beans, sugar, Milk, Cup',
                arrow = true,
                args = { name = 'matcha',
                ingredients = {'mug', 'gin', 'juice' }}
            },
            {
                title = 'Meowchi Mochi Ice Cream',
                description = 'Requirements: Tea, Tapioca Pearls, honey, Milk, Cup',
                arrow = true,
                event = 'coffeedrinks',
                args = { name = 'booba',
                ingredients = {'mug', 'gin', 'juice' }}
            },
            {
                title = 'Oxygen Cake',
                description = 'Requirements: Green tea, water, special herbs, sugar, cup',
                arrow = true,
                event = 'coffeedrinks',
                args = { name = 'sweattea',
                ingredients = {'tallglass', 'gin', 'juice' }}
            },
            {
                title = 'Purrfect Parfait',
                description = 'Requirements: Cocoa Powder, water, milk, cup',
                arrow = true,
                event = 'coffeedrinks',
                args = { name = 'hotchoc',
                ingredients = {'tallglass', 'gin', 'juice' }}
            },
        },
    })
    lib.showContext('dessertsmenu')
end)


exports.ox_target:addBoxZone({
	name = "uwuprepcounter",
	coords = vec3(-588.1, -1059.6, 22.3),
	size = vec3(0.55, 1.85, 0.3),
	rotation = 0.0,
    group = 'uwucafe',
})
exports.ox_target:addBoxZone({
	name = "uwuprepcounter2",
	coords = vec3(-591.05, -1063.05, 22.3),
	size = vec3(0.65, 1.35, 0.25),
	rotation = 0.0,
    group = 'uwucafe',
})
exports.ox_target:addBoxZone({
	name = "uwustovetop",
	coords = vec3(-591.05, -1056.5, 22.4),
	size = vec3(0.75, 1.5, 0.4),
	rotation = 0.0,
    options = {
        {
            event = 'UWU:baking',
            icon = 'fa-solid fa-circle',
            label = 'Start cooking food',
            group = 'uwucafe',
            canInteract = function(entity, distance, coords, name)
                return true
            end
        }
    }
})
exports.ox_target:addBoxZone({
	name = "uwufridge",
	coords = vec3(-590.65, -1058.6, 22.55),
	size = vec3(0.25, 1.0, 1.9),
	rotation = 0.0,
    options = {
        {
            event = 'UWU:desserts',
            icon = 'fa-solid fa-circle',
            label = 'Start baking desserts',
            group = 'uwucafe',
            canInteract = function(entity, distance, coords, name)
                return true
            end
        }
    }
})
exports.ox_target:addBoxZone({
	name = "uwucoffeemachine",
	coords = vec3(-586.85, -1061.9, 22.55),
	size = vec3(0.8, 0.85, 0.65),
	rotation = 0.0,
    debug = drawZones,
    options = {
        {
            name = 'sphere',
            event = 'UWU:coffee',
            icon = 'fa-solid fa-circle',
            label = 'Make Coffee Drinks',
            group = 'uwucafe',
            canInteract = function(entity, distance, coords, name)
                return true
            end
        }
    }
})
exports.ox_target:addBoxZone({
	name = "uwucoffeecup",
	coords = vec3(-586.9, -1061.05, 22.4),
	size = vec3(0.45, 0.35, 0.35),
	rotation = 0.0,
    options = {
        {
            event = "coffeecups",
            icon = "fa-solid fa-cubes-stacked",
            label = "Coffee Cup",
            distance = 2.5,
        },
    },
})

AddEventHandler("coffeecups", function()

        lib.registerContext({
            id = 'coffeecustom',
            title = 'Coffee Cups',
            options = {
                {
                    title = 'Get Coffee Cup',
                    arrow = false,
                    event = 'cofeeecup',
                },
            }
        })
        lib.showContext('coffeecustom')

end)

AddEventHandler('cofeeecup', function()
    TriggerServerEvent('CoffeeCup')
end)

