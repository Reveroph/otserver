local internalNpcName = "Amulet Seller"
local npcType = Game.createNpcType(internalNpcName)
local npcConfig = {}

npcConfig.name = internalNpcName
npcConfig.description = internalNpcName

npcConfig.health = 100
npcConfig.maxHealth = npcConfig.health
npcConfig.walkInterval = 2000
npcConfig.walkRadius = 2

npcConfig.outfit = {
	lookType = 725,
	lookHead = 95,
	lookBody = 0,
	lookLegs = 114,
	lookFeet = 114,
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
	{ itemName = "", clientId = 3057, buy = 60000 },
	{ itemName = "", clientId = 10457, buy = 5000 },
	{ itemName = "", clientId = 3056, buy = 200 },
	{ itemName = "", clientId = 3085, buy = 200 },
	{ itemName = "", clientId = 3082, buy = 200 },
	{ itemName = "", clientId = 3083, buy = 150 },
	{ itemName = "", clientId = 22060, buy = 5000 },
	{ itemName = "", clientId = 7532, buy = 200000 },
	{ itemName = "", clientId = 11468, buy = 90000 },
	{ itemName = "", clientId = 3055, buy = 5000 },
	{ itemName = "", clientId = 3084, buy = 200 },
	{ itemName = "", clientId = 3054, buy = 200 },
	{ itemName = "", clientId = 3081, buy = 5000 },
	{ itemName = "", clientId = 3045, buy = 200 },
	{ itemName = "", clientId = 815, buy = 2000 },
	{ itemName = "", clientId = 816, buy = 2000 },
	{ itemName = "", clientId = 817, buy = 2000 },
	{ itemName = "", clientId = 814, buy = 2000 },
	{ itemName = "", clientId = 22195, buy = 100000 },
	{ itemName = "", clientId = 21170, buy = 30000 },
	{ itemName = "", clientId = 21183, buy = 2300 },
	{ itemName = "", clientId = 9301, buy = 5000 },
	{ itemName = "", clientId = 9303, buy = 5000 },
	{ itemName = "", clientId = 9302, buy = 5000 },
	{ itemName = "", clientId = 9304, buy = 5000 },
	{ itemName = "", clientId = 22767, buy = 300000 },
	{ itemName = "", clientId = 27565, buy = 500000 },
	{ itemName = "", clientId = 13990, buy = 6000 },
	{ itemName = "", clientId = 23542, buy = 15000 },
	{ itemName = "", clientId = 23543, buy = 15000 },
	{ itemName = "", clientId = 23544, buy = 15000 },
	{ itemName = "", clientId = 16108, buy = 5500 },
	{ itemName = "", clientId = 16113, buy = 5500 },
	{ itemName = "", clientId = 19357, buy = 17000000 },
	{ itemName = "", clientId = 30345, buy = 15000000 },
	{ itemName = "", clientId = 30343, buy = 15000000 },
	{ itemName = "", clientId = 35523, buy = 8000000 },
	{ itemName = "", clientId = 39234, buy = 60000000 },
	{ itemName = "", clientId = 30403, buy = 5000000 },
	{ itemName = "", clientId = 30323, buy = 3150000 },
	{ itemName = "", clientId = 34158, buy = 7000000 },
	{ itemName = "", clientId = 31631, buy = 20000000 }
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
