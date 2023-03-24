local demonsForge = MoveEvent()

function demonsForge.onStepIn(creature, item, position, fromPosition)
	local player = creature:getPlayer()
	local pos = Position(17398, 17258, 8)
	if not player then
		return true
	end
	
	--se ele tiver o acesso vai direto sem custo!
	if player:getStorageValue(35800) >= 1 then 
		player:teleportTo(pos)
		player:getPosition():sendMagicEffect(CONST_ME_TELEPORT)
		player:sendTextMessage(MESSAGE_INFO_DESCR,"Voce foi teleportado com um acesso vip!")
		return true
	end
	
	--sem o acesso paga uma taxa pra acessar a hunt
	if player:removeMoneyBank(500000) then 
			player:teleportTo(pos)
			player:getPosition():sendMagicEffect(CONST_ME_TELEPORT)
			player:sendTextMessage(MESSAGE_INFO_DESCR,"Voce foi teleportado com um acesso padrao com custo de 500k")
		else
			player:teleportTo(fromPosition,true)
			player:getPosition():sendMagicEffect(CONST_ME_POFF)
			player:sendTextMessage(MESSAGE_INFO_DESCR,"SEU PEDACO DE MERDA, PRECISA DE 500K pra acessar ou comprar acesso vitalicio no Totonho!")		
	end

	return true
end

demonsForge:type("stepin")
demonsForge:aid(27888)
demonsForge:register()
