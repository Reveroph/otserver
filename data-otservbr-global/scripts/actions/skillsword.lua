local swordUpgrade = Action()

function swordUpgrade.onUse(player, item, fromPosition, target, toPosition, isHotkey)
	local charges = 250000
	player:addSkillTries(SKILL_SWORD, charges, true)
	player:sendTextMessage(22, "Voce melhorou Sua SKILL SWORD!")
	player:getPosition():sendMagicEffect(14)
	item:remove(1)
	return true
end

swordUpgrade:id(22723)
swordUpgrade:register()
