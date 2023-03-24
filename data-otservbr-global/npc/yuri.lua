local internalNpcName = "Yuri"
local npcType = Game.createNpcType(internalNpcName)
local npcConfig = {}

npcConfig.name = internalNpcName
npcConfig.description = internalNpcName

npcConfig.health = 100
npcConfig.maxHealth = npcConfig.health
npcConfig.walkInterval = 2000
npcConfig.walkRadius = 2

npcConfig.outfit = {
	lookType = 138,
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
	{ itemName = "", clientId = 7368, buy = 100 },
	{ itemName = "", clientId = 7367, buy = 90 },
	{ itemName = "", clientId = 21158, buy = 55 },
	{ itemName = "", clientId = 3347, buy = 20 },
	{ itemName = "", clientId = 25735, buy = 75 },
	{ itemName = "", clientId = 7378, buy = 35 },
	{ itemName = "", clientId = 25759, buy = 125 },
	{ itemName = "", clientId = 1781, buy = 1 },
	{ itemName = "", clientId = 2992, buy = 1 },
	{ itemName = "", clientId = 3277, buy = 10 },
	{ itemName = "", clientId = 3298, buy = 35 },
	{ itemName = "", clientId = 3287, buy = 50 },
	{ itemName = "", clientId = 7366, buy = 30 },
	{ itemName = "", clientId = 3447, buy = 1 },
	{ itemName = "", clientId = 3449, buy = 37 },
	{ itemName = "", clientId = 15793, buy = 20 },
	{ itemName = "", clientId = 25757, buy = 100 },
	{ itemName = "", clientId = 774, buy = 5 },
	{ itemName = "", clientId = 16143, buy = 12 },
	{ itemName = "", clientId = 763, buy = 5 },
	{ itemName = "", clientId = 761, buy = 5 },
	{ itemName = "", clientId = 7365, buy = 7 },
	{ itemName = "", clientId = 3448, buy = 3 },
	{ itemName = "", clientId = 762, buy = 5 },
	{ itemName = "", clientId = 21470, buy = 1 },
	{ itemName = "", clientId = 7364, buy = 5 },
	{ itemName = "", clientId = 14251, buy = 6 },
	{ itemName = "", clientId = 3446, buy = 1 },
	{ itemName = "", clientId = 16142, buy = 12 },
	{ itemName = "", clientId = 6528, buy = 75 },
	{ itemName = "", clientId = 7363, buy = 5 },
	{ itemName = "", clientId = 3450, buy = 7 },
	{ itemName = "", clientId = 16141, buy = 20 },
	{ itemName = "", clientId = 25758, buy = 100 },
	{ itemName = "", clientId = 14252, buy = 6 }
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
