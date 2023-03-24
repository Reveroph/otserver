local internalNpcName = "Zen"
local npcType = Game.createNpcType(internalNpcName)
local npcConfig = {}

npcConfig.name = internalNpcName
npcConfig.description = internalNpcName

npcConfig.health = 100
npcConfig.maxHealth = npcConfig.health
npcConfig.walkInterval = 2000
npcConfig.walkRadius = 2

npcConfig.outfit = {
	lookType = 134,
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
	{ itemName = "", clientId = 30397, buy = 13500000 },
	{ itemName = "", clientId = 16109, buy = 100000 },
	{ itemName = "", clientId = 39148, buy = 215000000 },
	{ itemName = "", clientId = 31577, buy = 900000 },
	{ itemName = "", clientId = 10385, buy = 60000 },
	{ itemName = "", clientId = 36663, buy = 20000000 },
	{ itemName = "", clientId = 28719, buy = 80000000 },
	{ itemName = "", clientId = 8053, buy = 200000 },
	{ itemName = "", clientId = 34157, buy = 16000000 },
	{ itemName = "", clientId = 8056, buy = 200000 },
	{ itemName = "", clientId = 13993, buy = 8000000 },
	{ itemName = "", clientId = 11686, buy = 350000 },
	{ itemName = "", clientId = 8061, buy = 51000 },
	{ itemName = "", clientId = 39147, buy = 315000000 },
	{ itemName = "", clientId = 8862, buy = 215000 },
	{ itemName = "", clientId = 8055, buy = 200000 },
	{ itemName = "", clientId = 8054, buy = 200000 },
	{ itemName = "", clientId = 35516, buy = 280000 },
	{ itemName = "", clientId = 13999, buy = 1050000 },
	{ itemName = "", clientId = 13997, buy = 330000 },
	{ itemName = "", clientId = 30394, buy = 15000000 },
	{ itemName = "", clientId = 39158, buy = 16000000 },
	{ itemName = "", clientId = 34097, buy = 240000000 },
	{ itemName = "", clientId = 29430, buy = 700000 },
	{ itemName = "", clientId = 36656, buy = 7000000 },
	{ itemName = "", clientId = 34154, buy = 10000000 },
	{ itemName = "", clientId = 14000, buy = 350000 },
	{ itemName = "", clientId = 16116, buy = 115000 },
	{ itemName = "", clientId = 8077, buy = 1500000 },
	{ itemName = "", clientId = 11688, buy = 700000 },
	{ itemName = "", clientId = 34099, buy = 65000000 },
	{ itemName = "", clientId = 28722, buy = 25000000 },
	{ itemName = "", clientId = 28721, buy = 9000000 },
	{ itemName = "", clientId = 27650, buy = 1100000 }
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
