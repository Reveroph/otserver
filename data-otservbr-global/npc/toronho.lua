local internalNpcName = "ToRonho"
local npcType = Game.createNpcType(internalNpcName)
local npcConfig = {}

npcConfig.name = internalNpcName
npcConfig.description = internalNpcName

npcConfig.health = 100
npcConfig.maxHealth = npcConfig.health
npcConfig.walkInterval = 2000
npcConfig.walkRadius = 2

npcConfig.outfit = {
	lookType = 31,
	lookHead = 114,
	lookBody = 114,
	lookLegs = 114,
	lookFeet = 114,
	lookAddons = 0
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
	{ itemName = "", clientId = 3316, buy = 1000 },
	{ itemName = "", clientId = 3317, buy = 2500 },
	{ itemName = "", clientId = 3323, buy = 3500 },
	{ itemName = "", clientId = 3318, buy = 5150 },
	{ itemName = "", clientId = 22172, buy = 8900 },
	{ itemName = "", clientId = 3344, buy = 6800 },
	{ itemName = "", clientId = 3320, buy = 12000 },
	{ itemName = "", clientId = 7380, buy = 40000 },
	{ itemName = "", clientId = 14040, buy = 75000 },
	{ itemName = "", clientId = 3342, buy = 100000 },
	{ itemName = "", clientId = 14089, buy = 80000 },
	{ itemName = "", clientId = 13991, buy = 130000 },
	{ itemName = "", clientId = 7455, buy = 100000000 },
	{ itemName = "", clientId = 3319, buy = 110000 },
	{ itemName = "", clientId = 7435, buy = 15000000 },
	{ itemName = "", clientId = 16161, buy = 200000 },
	{ itemName = "", clientId = 8098, buy = 2000000 },
	{ itemName = "", clientId = 8097, buy = 999000000 },
	{ itemName = "", clientId = 35515, buy = 380000 },
	{ itemName = "", clientId = 32616, buy = 4000000 },
	{ itemName = "", clientId = 30396, buy = 12000000 },
	{ itemName = "", clientId = 20072, buy = 3800000 },
	{ itemName = "", clientId = 20075, buy = 6000000 },
	{ itemName = "", clientId = 36661, buy = 25000000 },
	{ itemName = "", clientId = 36662, buy = 950000000 },
	{ itemName = "", clientId = 34253, buy = 8000000 },
	{ itemName = "", clientId = 28724, buy = 12000000 },
	{ itemName = "", clientId = 39156, buy = 5500000 },
	{ itemName = "", clientId = 34084, buy = 85000000 },
	{ itemName = "", clientId = 34085, buy = 180000000 },
	{ itemName = "", clientId = 3282, buy = 1000 },
	{ itemName = "", clientId = 3311, buy = 1500 },
	{ itemName = "", clientId = 7381, buy = 4000 },
	{ itemName = "", clientId = 7387, buy = 6300 },
	{ itemName = "", clientId = 7437, buy = 9500 },
	{ itemName = "", clientId = 7452, buy = 5900 },
	{ itemName = "", clientId = 3333, buy =  13000},
	{ itemName = "", clientId = 3312, buy = 15000000 },
	{ itemName = "", clientId = 3332, buy = 80000 },
	{ itemName = "", clientId = 7431, buy = 1250000 },
	{ itemName = "", clientId = 11692, buy = 830000 },
	{ itemName = "", clientId = 3309, buy = 80000000 },
	{ itemName = "", clientId = 14001, buy = 130000 },
	{ itemName = "", clientId = 8099, buy = 500000000 },
	{ itemName = "", clientId = 7450, buy = 615000000 },
	{ itemName = "", clientId = 22762, buy = 180000 },
	{ itemName = "", clientId = 30395, buy = 4000000 },
	{ itemName = "", clientId = 31580, buy = 2000000 },
	{ itemName = "", clientId = 29419, buy = 7500000 },
	{ itemName = "", clientId = 20081, buy = 9000000 },
	{ itemName = "", clientId = 20078, buy = 4000000 },
	{ itemName = "", clientId = 36659, buy = 25000000 },
	{ itemName = "", clientId = 36660, buy = 35000000 },
	{ itemName = "", clientId = 34254, buy = 3500000 },
	{ itemName = "", clientId = 28725, buy = 4000000 },
	{ itemName = "", clientId = 39157, buy = 6300000 },
	{ itemName = "", clientId = 34086, buy = 63000000 },
	{ itemName = "", clientId = 34087, buy = 85000000 },
	{ itemName = "", clientId = 3271, buy = 1800 },
	{ itemName = "", clientId = 7385, buy = 3500 },
	{ itemName = "", clientId = 7408, buy = 8000 },
	{ itemName = "", clientId = 3280, buy = 10000 },
	{ itemName = "", clientId = 7404, buy = 33000 },
	{ itemName = "", clientId = 7384, buy = 65000 },
	{ itemName = "", clientId = 7403, buy = 100000 },
	{ itemName = "", clientId = 3288, buy = 230000 },
	{ itemName = "", clientId = 8102, buy = 400000 },
	{ itemName = "", clientId = 16175, buy = 200000 },
	{ itemName = "", clientId = 8103, buy = 860000000 },
	{ itemName = "", clientId = 3296, buy = 900000000 },
	{ itemName = "", clientId = 3278, buy = 999999999 },
	{ itemName = "", clientId = 29421, buy = 2500000 },
	{ itemName = "", clientId = 29422, buy = 2500000 },
	{ itemName = "", clientId = 30398, buy = 4000000 },
	{ itemName = "", clientId = 27651, buy = 3000000 },
	{ itemName = "", clientId = 31614, buy = 6100000 },
	{ itemName = "", clientId = 20069, buy = 4350000 },
	{ itemName = "", clientId = 20066, buy = 3000000 },
	{ itemName = "", clientId = 36657, buy = 25000000 },
	{ itemName = "", clientId = 36658, buy = 35000000 },
	{ itemName = "", clientId = 34155, buy = 4500000 },
	{ itemName = "", clientId = 28723, buy = 13000000 },
	{ itemName = "", clientId = 39155, buy = 7900000 },
	{ itemName = "", clientId = 34082, buy = 85000000 },
	{ itemName = "", clientId = 34083, buy = 200000000 }
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
