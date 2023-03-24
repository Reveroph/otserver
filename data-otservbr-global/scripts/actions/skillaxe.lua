local axeUpgrade = Action()

function axeUpgrade.onUse(player, item, fromPosition, target, toPosition, isHotkey)
	local charges = 250000
	player:addSkillTries(SKILL_AXE, charges, true)
	player:sendTextMessage(22, "Voce melhorou Sua SKILL AXE!")
	player:getPosition():sendMagicEffect(14)
	item:remove(1)
	return true
end

axeUpgrade:id(22720)
axeUpgrade:register()
