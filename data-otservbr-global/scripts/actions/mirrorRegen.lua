local mirrorRegen = Action()
function mirrorRegen.onUse(player, item, fromPosition, itemEx, toPosition)
	player:getPosition():sendMagicEffect(CONST_ME_MAGIC_BLUE)
	player:addHealth(50000)
	player:addMana(50000)
	return true
end

mirrorRegen:aid(47953)
mirrorRegen:register()