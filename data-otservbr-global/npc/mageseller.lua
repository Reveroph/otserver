local internalNpcName = "Mage Seller"
local npcType = Game.createNpcType(internalNpcName)
local npcConfig = {}

npcConfig.name = internalNpcName
npcConfig.description = internalNpcName

npcConfig.health = 100
npcConfig.maxHealth = npcConfig.health
npcConfig.walkInterval = 2000
npcConfig.walkRadius = 2

npcConfig.outfit = {
	lookType = 1202,
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
	{ itemName = "", clientId = 39153, buy = 85000000 },
	{ itemName = "", clientId = 36671, buy = 22000000 },
	{ itemName = "", clientId = 39151, buy = 85000000 },
	{ itemName = "", clientId = 36670, buy = 22000000 },
	{ itemName = "", clientId = 31582, buy = 7300000 },
	{ itemName = "", clientId = 9103, buy = 130000 },
	{ itemName = "", clientId = 28714, buy = 30000000 },
	{ itemName = "", clientId = 27647, buy = 28000000 },
	{ itemName = "", clientId = 23474, buy = 50000 },
	{ itemName = "", clientId = 9653, buy = 85000 },
	{ itemName = "", clientId = 8864, buy = 290000 },
	{ itemName = "", clientId = 31578, buy = 750000 },
	{ itemName = "", clientId = 8041, buy = 200000 },
	{ itemName = "", clientId = 39165, buy = 29000000 },
	{ itemName = "", clientId = 8038, buy = 200000 },
	{ itemName = "", clientId = 34096, buy = 116000000 },
	{ itemName = "", clientId = 39164, buy = 63000000 },
	{ itemName = "", clientId = 8039, buy = 200000 },
	{ itemName = "", clientId = 8062, buy = 250000 },
	{ itemName = "", clientId = 34095, buy = 100000000 },
	{ itemName = "", clientId = 31583, buy = 5000000 },
	{ itemName = "", clientId = 8040, buy = 200000 },
	{ itemName = "", clientId = 14086, buy = 99000 },
	{ itemName = "", clientId = 29423, buy = 1350000 },
	{ itemName = "", clientId = 8043, buy = 50000 },
	{ itemName = "", clientId = 19391, buy = 780000 },
	{ itemName = "", clientId = 29418, buy = 480000 },
	{ itemName = "", clientId = 11687, buy = 245000 },
	{ itemName = "", clientId = 39167, buy = 38000000 },
	{ itemName = "", clientId = 34093, buy = 95000000 },
	{ itemName = "", clientId = 39166, buy = 75000000 },
	{ itemName = "", clientId = 13996, buy = 250000 },
	{ itemName = "", clientId = 16106, buy = 140000 },
	{ itemName = "", clientId = 27649, buy = 30000000 },
	{ itemName = "", clientId = 32618, buy = 795000 },
	{ itemName = "", clientId = 29424, buy = 4500000 },
	{ itemName = "", clientId = 32619, buy = 3900000 },
	{ itemName = "", clientId = 35519, buy = 1430000 },
	{ itemName = "", clientId = 35520, buy = 1050000 },
	{ itemName = "", clientId = 20090, buy = 22000000 },
	{ itemName = "", clientId = 29431, buy = 6000000 },
	{ itemName = "", clientId = 16107, buy = 465000 },
	{ itemName = "", clientId = 8090, buy = 249000 },
	{ itemName = "", clientId = 14769, buy = 8450000 },
	{ itemName = "", clientId = 29420, buy = 5350000 },
	{ itemName = "", clientId = 34153, buy = 16000000 },
	{ itemName = "", clientId = 36673, buy = 29000000 },
	{ itemName = "", clientId = 36672, buy = 29000000 },
	{ itemName = "", clientId = 29426, buy = 4750000 },
	{ itemName = "", clientId = 22755, buy = 6850000 },
	{ itemName = "", clientId = 39152, buy = 150000000 },
	{ itemName = "", clientId = 39154, buy = 150000000 },
	{ itemName = "", clientId = 34091, buy = 185000000 },
	{ itemName = "", clientId = 28716, buy = 36000000 },
	{ itemName = "", clientId = 34151, buy = 10000000 },
	{ itemName = "", clientId = 39163, buy = 20000000 },
	{ itemName = "", clientId = 36674, buy = 8900000 },
	{ itemName = "", clientId = 36675, buy = 15000000 },
	{ itemName = "", clientId = 34090, buy = 185000000 },
	{ itemName = "", clientId = 28717, buy = 22000000 },
	{ itemName = "", clientId = 30399, buy = 8500000 },
	{ itemName = "", clientId = 39162, buy = 25000000 },
	{ itemName = "", clientId = 36668, buy = 30000000 },
	{ itemName = "", clientId = 36669, buy = 33000000 },
	{ itemName = "", clientId = 34152, buy = 4500000 },
	{ itemName = "", clientId = 30400, buy = 5750000 }
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
