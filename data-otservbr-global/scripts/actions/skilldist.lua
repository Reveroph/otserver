local distUpgrade = Action()

function distUpgrade.onUse(player, item, fromPosition, target, toPosition, isHotkey)
	local charges = 250000
	player:addSkillTries(SKILL_DISTANCE, charges, true)
	player:sendTextMessage(22, "Voce melhorou Sua SKILL DISTANCE!")
	player:getPosition():sendMagicEffect(14)
	item:remove(1)
	return true
end

distUpgrade:id(22724)
distUpgrade:register()
