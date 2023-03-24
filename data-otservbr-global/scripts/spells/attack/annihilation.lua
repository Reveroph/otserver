local combat = Combat()
combat:setParameter(COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
combat:setParameter(COMBAT_PARAM_EFFECT, CONST_ME_HITAREA)
combat:setParameter(COMBAT_PARAM_DISTANCEEFFECT, CONST_ANI_WEAPONTYPE)
combat:setParameter(COMBAT_PARAM_BLOCKARMOR, 1)
combat:setParameter(COMBAT_PARAM_USECHARGES, 1)

function onGetFormulaValues(player, skill, attack, factor)
	local level = player:getLevel()
	local extra = 1
	
	if skill >= 162 and skill  < 200 then
			extra = 1.05
		elseif skill >= 200 and skill  < 230 then
			extra = 1.1
		elseif skill >= 230 then
			extra = 1.20
	end
	
	local min = (level / 5) + ((skill * attack * 0.13)*0.65)
	local max = (level / 5) + (skill * attack * 0.13)  

	return -min * extra, -max * extra -- TODO : Use New Real Formula instead of an %
end

combat:setCallback(CALLBACK_PARAM_SKILLVALUE, "onGetFormulaValues")

local spell = Spell("instant")

function spell.onCastSpell(creature, var)
	return combat:execute(creature, var)
end

spell:group("attack")
spell:id(62)
spell:name("Annihilation")
spell:words("exori gran ico")
spell:level(110)
spell:mana(300)
spell:isPremium(true)
spell:range(1)
spell:needTarget(true)
spell:blockWalls(true)
spell:needWeapon(true)
spell:cooldown(30 * 1000)
spell:groupCooldown(4 * 1000)
spell:needLearn(false)
spell:vocation("knight;true", "elite knight;true")
spell:register()