local mlUpgrade = Action()

function mlUpgrade.onUse(player, item, fromPosition, target, toPosition, isHotkey)
	local charges = 250000
	player:addManaSpent(charges, true)
	player:sendTextMessage(22, "Voce melhorou Sua SKILL MAGIC LVL")
	player:getPosition():sendMagicEffect(14)
	item:remove(1)
	return true
end

mlUpgrade:id(36724)
mlUpgrade:register()
