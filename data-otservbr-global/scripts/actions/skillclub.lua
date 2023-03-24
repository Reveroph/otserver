local clubUpgrade = Action()

function clubUpgrade.onUse(player, item, fromPosition, target, toPosition, isHotkey)
	local charges = 250000
	player:addSkillTries(SKILL_CLUB, charges, true)
	player:sendTextMessage(22, "Voce melhorou Sua SKILL CLUB!")
	player:getPosition():sendMagicEffect(14)
	item:remove(1)
	return true
end

clubUpgrade:id(22722)
clubUpgrade:register()
