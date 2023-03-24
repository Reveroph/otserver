local internalNpcName = "Marcos Willian"
local npcType = Game.createNpcType(internalNpcName)
local npcConfig = {}

npcConfig.name = internalNpcName
npcConfig.description = internalNpcName

npcConfig.health = 100
npcConfig.maxHealth = npcConfig.health
npcConfig.walkInterval = 2000
npcConfig.walkRadius = 2

npcConfig.outfit = {
	lookType = 1460,
	lookHead = 114,
	lookBody = 125,
	lookLegs = 0,
	lookFeet = 95,
	lookAddons = 3
}

npcConfig.flags = {
	floorchange = false
}

local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)

npcType.onThink = function(npc, interval)
	npcHandler:onThink(npc, interval)
end

npcType.onAppear = function(npc, creature)
	npcHandler:onAppear(npc, creature)
end

npcType.onDisappear = function(npc, creature)
	npcHandler:onDisappear(npc, creature)
end

npcType.onMove = function(npc, creature, fromPosition, toPosition)
	npcHandler:onMove(npc, creature, fromPosition, toPosition)
end

npcType.onSay = function(npc, creature, type, message)
	npcHandler:onSay(npc, creature, type, message)
end

npcType.onCloseChannel = function(npc, creature)
	npcHandler:onCloseChannel(npc, creature)
end
npcHandler:addModule(FocusModule:new(), npcConfig.name, true, true, true)

npcConfig.shop = {
	{ itemName = "premium scroll", clientId = 14758, buy = 7500000 },
	{ itemName = "plate armor", clientId = 3357, buy = 1000 },
	{ itemName = "plate legs", clientId = 3557, buy = 1000 },
	{ itemName = "steel helmet", clientId = 3351, buy = 1000 },
	{ itemName = "dwarven shield", clientId = 3425, buy = 1000 },
	{ itemName = "quiver", clientId = 35562, buy = 400 },
	{ itemName = "blue quiver", clientId = 35848, buy = 400 },
	{ itemName = "red quiver", clientId = 35849, buy = 400 },
	{ itemName = "bow", clientId = 3350, buy = 500 },
	{ itemName = "crossbow", clientId = 3349, buy = 500 },
	{ itemName = "bolt", clientId = 3446, buy = 1 },
	{ itemName = "arrow", clientId = 3447, buy = 1 },
	{ itemName = "spear", clientId = 3277, buy = 20 },
	{ itemName = "steel axe", clientId = 7773, buy = 750 },
	{ itemName = "daramanian mace", clientId = 3327, buy = 750 },
	{ itemName = "jagged sword", clientId = 7774, buy = 750 },
	{ itemName = "leather boots", clientId = 3552, buy = 500 },
	{ itemName = "horn", clientId = 19359, buy = 5000 },
	{ itemName = "backpack", clientId = 2854, buy = 10 },
	{ itemName = "snakebite rod", clientId = 3066, buy = 500 },
	{ itemName = "wand of vortex", clientId = 3074, buy = 500 },
	{ itemName = "scarf", clientId = 3572, buy = 500 },
	{ itemName = "silver token", clientId = 22516, buy = 25000 },
	{ itemName = "silver token", clientId = 22516, sell = 20000 },
	{ itemName = "", clientId = 3393, buy = 250000000 },
	{ itemName = "", clientId = 3395, buy = 100000000 },
	{ itemName = "", clientId = 21892, buy = 100000 },
	{ itemName = "", clientId = 3011, buy = 850000000 },
	{ itemName = "", clientId = 3385, buy = 5000 },
	{ itemName = "", clientId = 3391, buy = 9000 },
	{ itemName = "", clientId = 3387, buy = 150000 },
	{ itemName = "", clientId = 13995, buy = 250000 },
	{ itemName = "", clientId = 3400, buy = 15000000 },
	{ itemName = "", clientId = 3396, buy = 1300000 },
	{ itemName = "", clientId = 3230, buy = 850000 },
	{ itemName = "", clientId = 3365, buy = 650000000 },
	{ itemName = "", clientId = 37609, buy = 250000000 },
	{ itemName = "", clientId = 3390, buy = 900000000 },
	{ itemName = "", clientId = 5741, buy = 85000 },
	{ itemName = "", clientId = 22754, buy = 25000000 },
	{ itemName = "", clientId = 22062, buy = 9000000 },
	{ itemName = "", clientId = 3368, buy = 850000000 },
	{ itemName = "", clientId = 19358, buy = 550000 },
	{ itemName = "", clientId = 3567, buy = 30000 },
	{ itemName = "", clientId = 3388, buy = 230000 },
	{ itemName = "", clientId = 37608, buy = 250000000 },
	{ itemName = "", clientId = 3397, buy = 3500000 },
	{ itemName = "", clientId = 3399, buy = 7000000 },
	{ itemName = "", clientId = 22085, buy = 100000 },
	{ itemName = "", clientId = 19372, buy = 385000 },
	{ itemName = "", clientId = 3381, buy = 30000 },
	{ itemName = "", clientId = 3366, buy = 150000 },
	{ itemName = "", clientId = 3370, buy = 8000 },
	{ itemName = "", clientId = 11651, buy = 100000 },
	{ itemName = "", clientId = 3386, buy = 50000 },
	{ itemName = "", clientId = 3437, buy = 185000000 },
	{ itemName = "", clientId = 3423, buy = 990000000 },
	{ itemName = "", clientId = 3419, buy = 8900 },
	{ itemName = "", clientId = 22758, buy = 35000000 },
	{ itemName = "", clientId = 3420, buy = 50000 },
	{ itemName = "", clientId = 3438, buy = 80000000 },
	{ itemName = "", clientId = 3422, buy = 25000000 },
	{ itemName = "", clientId = 3414, buy = 75000 },
	{ itemName = "", clientId = 6432, buy = 250000 },
	{ itemName = "", clientId = 6390, buy = 250000 },
	{ itemName = "", clientId = 21168, buy = 56000 },
	{ itemName = "", clientId = 645, buy = 200000 },
	{ itemName = "", clientId = 3389, buy = 7000000 },
	{ itemName = "", clientId = 37607, buy = 250000000 },
	{ itemName = "", clientId = 3363, buy = 750000000 },
	{ itemName = "", clientId = 3398, buy = 230000 },
	{ itemName = "", clientId = 14087, buy = 95000 },
	{ itemName = "", clientId = 10387, buy = 75000 },
	{ itemName = "", clientId = 3382, buy = 18000 },
	{ itemName = "", clientId = 3371, buy = 8000 },
	{ itemName = "", clientId = 3079, buy = 50000 },
	{ itemName = "", clientId = 9019, buy = 130000 },
	{ itemName = "", clientId = 6529, buy = 450000 },
	{ itemName = "", clientId = 3555, buy = 7500000 },
	{ itemName = "", clientId = 5461, buy = 18000 },
	{ itemName = "", clientId = 3554, buy = 50000 },
	{ itemName = "", clientId = 22756, buy = 17000000 },
	{ itemName = "", clientId = 23477, buy = 30000 },
	{ itemName = "", clientId = 30196, buy = 600000 },
	{ itemName = "", clientId = 3364, buy = 60000 },
	{ itemName = "", clientId = 28541, buy = 7560000*3, count = 14400 },
	{ itemName = "", clientId = 28543, buy = 7560000*3, count = 14400 },
	{ itemName = "", clientId = 28542, buy = 7560000*3, count = 14400 },
	{ itemName = "", clientId = 28540, buy = 7560000*3, count = 14400 },
	{ itemName = "", clientId = 28544, buy = 7560000*3, count = 14400 },
	{ itemName = "", clientId = 28545, buy = 7560000*3, count = 14400 },
	{ itemName = "gold token", clientId = 22721, sell = 35000 },
	{ itemName = "demonic essence", clientId = 6499, sell = 1000 },
	{ itemName = "gold token", clientId = 22721, buy = 50000 }
}
-- On buy npc shop message
npcType.onBuyItem = function(npc, player, itemId, subType, amount, ignore, inBackpacks, totalCost)
	npc:sellItem(player, itemId, amount, subType, 0, ignore, inBackpacks)
end
-- On sell npc shop message
npcType.onSellItem = function(npc, player, itemId, subtype, amount, ignore, name, totalCost)
	player:sendTextMessage(MESSAGE_INFO_DESCR, string.format("Sold %ix %s for %i gold.", amount, name, totalCost))
end
-- On check npc shop message (look item)
npcType.onCheckItem = function(npc, player, clientId, subType)
end

npcType:register(npcConfig)
