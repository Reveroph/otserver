local internalNpcName = "Ring Seller"
local npcType = Game.createNpcType(internalNpcName)
local npcConfig = {}

npcConfig.name = internalNpcName
npcConfig.description = internalNpcName

npcConfig.health = 100
npcConfig.maxHealth = npcConfig.health
npcConfig.walkInterval = 2000
npcConfig.walkRadius = 2

npcConfig.outfit = {
	lookType = 1568,
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
	{ itemName = "", clientId = 3092, buy = 500 },
	{ itemName = "", clientId = 3093, buy = 500 },
	{ itemName = "", clientId = 6299, buy = 2000 },
	{ itemName = "", clientId = 3097, buy = 2000 },
	{ itemName = "", clientId = 3051, buy = 200 },
	{ itemName = "", clientId = 3052, buy = 500 },
	{ itemName = "", clientId = 3048, buy = 5000 },
	{ itemName = "", clientId = 3050, buy = 500 },
	{ itemName = "", clientId = 3098, buy = 2000 },
	{ itemName = "", clientId = 3049, buy = 1000 },
	{ itemName = "", clientId = 3091, buy = 500 },
	{ itemName = "", clientId = 3053, buy = 500 },
	{ itemName = "", clientId = 25698, buy = 5000 },
	{ itemName = "", clientId = 23529, buy = 10000 },
	{ itemName = "", clientId = 23531, buy = 10000 },
	{ itemName = "", clientId = 23533, buy = 10000 },
	{ itemName = "", clientId = 16114, buy = 80000 },
	{ itemName = "", clientId = 32636, buy = 2000000 },
	{ itemName = "", clientId = 31621, buy = 650000 },
	{ itemName = "", clientId = 39182, buy = 150000000 },
	{ itemName = "", clientId = 39185, buy = 150000000 },
	{ itemName = "", clientId = 39188, buy = 150000000 },
	{ itemName = "", clientId = 39179, buy = 150000000 }
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
