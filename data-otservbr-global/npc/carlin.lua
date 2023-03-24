local internalNpcName = "Carlin"
local npcType = Game.createNpcType(internalNpcName)
local npcConfig = {}

npcConfig.name = internalNpcName
npcConfig.description = internalNpcName

npcConfig.health = 100
npcConfig.maxHealth = npcConfig.health
npcConfig.walkInterval = 2000
npcConfig.walkRadius = 2

npcConfig.outfit = {
	lookType = 367,
	lookHead = 95,
	lookBody = 95,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 2
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
	{ itemName = "", clientId = 28715, buy = 70000000 },
	{ itemName = "", clientId = 39149, buy = 325000000 },
	{ itemName = "", clientId = 29427, buy = 1650000 },
	{ itemName = "", clientId = 11689, buy = 850000 },
	{ itemName = "", clientId = 34156, buy = 14000000 },
	{ itemName = "", clientId = 3575, buy = 6800 },
	{ itemName = "", clientId = 16110, buy = 500000 },
	{ itemName = "", clientId = 3394, buy = 350000000 },
	{ itemName = "", clientId = 8044, buy = 900 },
	{ itemName = "", clientId = 13994, buy = 850000 },
	{ itemName = "", clientId = 8057, buy = 430000 },
	{ itemName = "", clientId = 31579, buy = 1000000 },
	{ itemName = "", clientId = 8059, buy = 430000 },
	{ itemName = "", clientId = 32628, buy = 5000000 },
	{ itemName = "", clientId = 27648, buy = 73000000 },
	{ itemName = "", clientId = 8060, buy = 200000 },
	{ itemName = "", clientId = 8058, buy = 430000 },
	{ itemName = "", clientId = 8063, buy = 79000 },
	{ itemName = "", clientId = 34094, buy = 180000000 },
	{ itemName = "", clientId = 32617, buy = 7300000 },
	{ itemName = "", clientId = 28720, buy = 135000000 },
	{ itemName = "", clientId = 35517, buy = 900000 },
	{ itemName = "", clientId = 36667, buy = 12000000 },
	{ itemName = "", clientId = 16111, buy = 900000 },
	{ itemName = "", clientId = 8863, buy = 350000 },
	{ itemName = "", clientId = 39150, buy = 90000000 },
	{ itemName = "", clientId = 36666, buy = 15000000 },
	{ itemName = "", clientId = 35524, buy = 850000 },
	{ itemName = "", clientId = 39160, buy = 25000000 },
	{ itemName = "", clientId = 39161, buy = 85000000 },
	{ itemName = "", clientId = 34098, buy = 185000000 },
	{ itemName = "", clientId = 16112, buy = 135000 },
	{ itemName = "", clientId = 31617, buy = 700000 },
	{ itemName = "", clientId = 10200, buy = 50000000 },
	{ itemName = "", clientId = 10201, buy = 50000000 },
	{ itemName = "", clientId = 4033, buy = 80000 },
	{ itemName = "", clientId = 10323, buy = 110000 },
	{ itemName = "", clientId = 21169, buy = 55000 },
	{ itemName = "", clientId = 5803, buy = 95000 },
	{ itemName = "", clientId = 8022, buy = 135000 },
	{ itemName = "", clientId = 30393, buy = 4500000 },
	{ itemName = "", clientId = 16163, buy = 100000 },
	{ itemName = "", clientId = 8021, buy = 45000 },
	{ itemName = "", clientId = 39159, buy = 40000000 },
	{ itemName = "", clientId = 22867, buy = 67000 },
	{ itemName = "", clientId = 8023, buy = 3000000 },
	{ itemName = "", clientId = 34089, buy = 80000000 },
	{ itemName = "", clientId = 8024, buy = 14000000 },
	{ itemName = "", clientId = 8025, buy = 2150000 },
	{ itemName = "", clientId = 14768, buy = 9000000 },
	{ itemName = "", clientId = 19356, buy = 15000000 },
	{ itemName = "", clientId = 20087, buy = 20000000 },
	{ itemName = "", clientId = 31581, buy = 4500000 },
	{ itemName = "", clientId = 8027, buy = 60000 },
	{ itemName = "", clientId = 36664, buy = 28000000 },
	{ itemName = "", clientId = 7438, buy = 6000 },
	{ itemName = "", clientId = 28718, buy = 50000000 },
	{ itemName = "", clientId = 36665, buy = 30000000 },
	{ itemName = "", clientId = 14246, buy = 99000 },
	{ itemName = "", clientId = 19362, buy = 125000 },
	{ itemName = "", clientId = 34150, buy = 3850000 },
	{ itemName = "", clientId = 29417, buy = 1830000 },
	{ itemName = "", clientId = 16164, buy = 89500 },
	{ itemName = "", clientId = 22866, buy = 105000 },
	{ itemName = "", clientId = 8029, buy = 63000 },
	{ itemName = "", clientId = 34088, buy = 385000000 },
	{ itemName = "", clientId = 8026, buy = 200000 }
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
