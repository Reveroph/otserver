local internalNpcName = "Tools Seller"
local npcType = Game.createNpcType(internalNpcName)
local npcConfig = {}

npcConfig.name = internalNpcName
npcConfig.description = internalNpcName

npcConfig.health = 100
npcConfig.maxHealth = npcConfig.health
npcConfig.walkInterval = 2000
npcConfig.walkRadius = 2

npcConfig.outfit = {
	lookType = 1436,
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
	{ itemName = "", clientId = 28493, buy = 3000000 },
	{ itemName = "", clientId = 22720, buy = 10000000 },
	{ itemName = "", clientId = 22722, buy = 10000000 },
	{ itemName = "", clientId = 22723, buy = 10000000 },
	{ itemName = "", clientId = 22724, buy = 10000000 },
	{ itemName = "", clientId = 36724, buy = 10000000 },
	{ itemName = "", clientId = 25975, buy = 50000 },
	{ itemName = "", clientId = 36725, buy = 1600000 },
	{ itemName = "", clientId = 36731, buy = 5650000 },
	{ itemName = "", clientId = 33892, buy = 500000000 },
	{ itemName = "", clientId = 12811, buy = 500000000 },
	{ itemName = "", clientId = 35909, buy = 500000000 },
	{ itemName = "", clientId = 10425, buy = 650000 },
	{ itemName = "", clientId = 19365, buy = 50000 },
	{ itemName = "", clientId = 19361, buy = 50000 },
	{ itemName = "", clientId = 19369, buy = 50000 },
	{ itemName = "", clientId = 19371, buy = 50000 },
	{ itemName = "", clientId = 4831, buy = 1 },
	{ itemName = "", clientId = 18339, buy = 13000 },
	{ itemName = "", clientId = 12540, buy = 50000 },
	{ itemName = "", clientId = 25976, buy = 50000 },
	{ itemName = "", clientId = 25977, buy = 50000 },
	{ itemName = "", clientId = 3249, buy = 1000 },
	{ itemName = "", clientId = 21217, buy = 10000 },
	{ itemName = "", clientId = 5942, buy = 20000 },
	{ itemName = "", clientId = 646, buy = 1000 },
	{ itemName = "", clientId = 5467, buy = 15 },
	{ itemName = "", clientId = 9016, buy = 100 },
	{ itemName = "", clientId = 5710, buy = 500 },
	{ itemName = "", clientId = 39136, buy = 10 },
	{ itemName = "", clientId = 5908, buy = 5000 },
	{ itemName = "", clientId = 37536, buy = 20000000 },
	{ itemName = "", clientId = 14674, buy = 80000 },
	{ itemName = "", clientId = 22084, buy = 300000 },
	{ itemName = "", clientId = 31625, buy = 850000 },
	{ itemName = "", clientId = 35577, buy = 425000 },
	{ itemName = "", clientId = 24393, buy = 195000 },
	{ itemName = "", clientId = 19159, buy = 1000 },
	{ itemName = "", clientId = 5801, buy = 500 },
	{ itemName = "", clientId = 36728, buy = 30000 },
	{ itemName = "", clientId = 39754, buy = 14000000 },
	{ itemName = "", clientId = 32620, buy = 8000000 },
	{ itemName = "", clientId = 21292, buy = 4300000 },
	{ itemName = "", clientId = 23525, buy = 250000 },
	{ itemName = "", clientId = 24395, buy = 35000 },
	{ itemName = "", clientId = 9594, buy = 200000 },
	{ itemName = "", clientId = 9596, buy = 200000 },
	{ itemName = "", clientId = 9598, buy = 200000 }
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
