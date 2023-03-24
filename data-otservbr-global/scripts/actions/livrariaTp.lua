local livrariaTp = Action()
function livrariaTp.onUse(player, item, fromPosition, itemEx, toPosition)
	local pos = Position(32515, 32539, 12)
	player:teleportTo(pos)
	player:getPosition():sendMagicEffect(CONST_ME_MORTAREA)
	player:sendTextMessage(MESSAGE_INFO_DESCR,"Bem Vindo a Livraria!")
	return true
end

livrariaTp:aid(30508)
livrariaTp:register()