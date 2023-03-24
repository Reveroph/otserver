local internalNpcName = "Tinao"
local npcType = Game.createNpcType(internalNpcName)
local npcConfig = {}

npcConfig.name = internalNpcName
npcConfig.description = internalNpcName

npcConfig.health = 100
npcConfig.maxHealth = npcConfig.health
npcConfig.walkInterval = 2000
npcConfig.walkRadius = 2

npcConfig.outfit = {
	lookType = 116,
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
	{ itemName = "", clientId = 3587, buy = 2 },
	{ itemName = "", clientId = 3725, buy = 10 },
	{ itemName = "", clientId = 3731, buy = 50 },
	{ itemName = "", clientId = 3583, buy = 15 },
	{ itemName = "", clientId = 9086, buy = 230000 },
	{ itemName = "", clientId = 28484, buy = 300000 },
	{ itemName = "", clientId = 29414, buy = 40000 },
	{ itemName = "", clientId = 9087, buy = 25000 },
	{ itemName = "", clientId = 29409, buy = 10000 },
	{ itemName = "", clientId = 29411, buy = 5000 },
	{ itemName = "", clientId = 9080, buy =  1000},
	{ itemName = "", clientId = 9079, buy =  380000},
	{ itemName = "", clientId = 28485, buy =  315000},
	{ itemName = "", clientId = 9082, buy =  85000},
	{ itemName = "", clientId = 29410, buy =  35000},
	{ itemName = "", clientId = 24966, buy =  1500000},
	{ itemName = "", clientId = 9084, buy = 12500 }
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
