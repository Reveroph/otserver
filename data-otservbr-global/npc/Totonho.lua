local internalNpcName = "Totonho"
local npcType = Game.createNpcType(internalNpcName)
local npcConfig = {}

npcConfig.name = internalNpcName
npcConfig.description = internalNpcName

npcConfig.health = 100
npcConfig.maxHealth = npcConfig.health
npcConfig.walkInterval = 2000
npcConfig.walkRadius = 2

npcConfig.outfit = {
	lookType = 289,
	lookHead = 92,
	lookBody = 92,
	lookLegs = 92,
	lookFeet = 92,
	lookAddons = 3
}

npcConfig.flags = {
	floorchange = false
}

npcConfig.voices = {
	interval = 15000,
	chance = 50,
	{text = "Always be on guard."},
	{text = "Hmm."}
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

local function creatureSayCallback(npc, creature, type, message)
	local player = Player(creature)

	if MsgContains(message, "demons forge") then
		if player:getStorageValue(35800) < 1 then
				if player:removeMoneyBank(20000000) then 
						npcHandler:say({"Voce comprou acesso permanente a Hunt demon forge! Parabens"}, npc, creature)
						player:setStorageValue(35800, 1)
						player:getPosition():sendMagicEffect(CONST_ME_MAGIC_BLUE)
					else
						npcHandler:say({"O PEDACO DE MERDA, SEU LIXO FEDIDO E ESMEGMA, VC PRECISA DE 20KK PRA COMPRAR ESSE PASSE!"}, npc, creature)
				end
			else
				npcHandler:say({"Essa hunt vc ja tem acesso bro! xD"}, npc, creature)		
		end
	end
	return true
end
--Basic

npcHandler:setMessage(MESSAGE_SENDTRADE, "Of course, my friend.")
npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)

npcHandler:setMessage(MESSAGE_GREET, 'Oi, |PLAYERNAME|. posso fornecer acesso a hunts exclusivas pra voce, as opcoes sao: {demons forge},20kk')
npcHandler:setMessage(MESSAGE_FAREWELL, 'VAI EMBORA PORRA, FDP DESGRACADO, VAAAAAAAAAAAAAI!')
npcHandler:setMessage(MESSAGE_WALKAWAY, 'SOME DIABO, FDP SEM EDUCACAO SEU PEDACO DE MERDA')

npcHandler:addModule(FocusModule:new(), npcConfig.name, true, true, true)

npcConfig.shop = {
	{ itemName = "vial of potent holy water", clientId = 31612, buy = 100 }
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
