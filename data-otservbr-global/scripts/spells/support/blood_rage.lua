local condition = Condition(CONDITION_ATTRIBUTES)
condition:setParameter(CONDITION_PARAM_SUBID, 5)
condition:setParameter(CONDITION_PARAM_TICKS, 10000)
condition:setParameter(CONDITION_PARAM_SKILL_MELEEPERCENT, 135)
condition:setParameter(CONDITION_PARAM_BUFF_DAMAGERECEIVED, 115)
condition:setParameter(CONDITION_PARAM_DISABLE_DEFENSE, true)
condition:setParameter(CONDITION_PARAM_BUFF_SPELL, true)

local combat = Combat()
combat:setParameter(COMBAT_PARAM_EFFECT, CONST_ME_MAGIC_GREEN)
combat:setParameter(COMBAT_PARAM_AGGRESSIVE, 0)
combat:addCondition(condition)

------------------------------------

local condition2 = Condition(CONDITION_ATTRIBUTES)
condition2:setParameter(CONDITION_PARAM_SUBID, 5)
condition2:setParameter(CONDITION_PARAM_TICKS, 10000)
condition2:setParameter(CONDITION_PARAM_SKILL_MELEEPERCENT, 135)
condition2:setParameter(CONDITION_PARAM_BUFF_DAMAGERECEIVED, 130)
condition2:setParameter(CONDITION_PARAM_DISABLE_DEFENSE, true)
condition2:setParameter(CONDITION_PARAM_BUFF_SPELL, true)

local combat2 = Combat()
combat2:setParameter(COMBAT_PARAM_EFFECT, CONST_ME_MAGIC_GREEN)
combat2:setParameter(COMBAT_PARAM_AGGRESSIVE, 0)
combat2:addCondition(condition2)

local spell = Spell("instant")

function spell.onCastSpell(creature, var)
	if creature:getCondition(CONDITION_ATTRIBUTES, CONDITIONID_COMBAT, 5) then
		creature:removeCondition(CONDITION_ATTRIBUTES, CONDITIONID_COMBAT, 5)
	end
	if creature:getStorageValue(57503) == 1 then
		return combat2:execute(creature, var)
	end
	return combat:execute(creature, var)
end

spell:name("Blood Rage")
spell:words("utito tempo")
spell:group("support", "focus")
spell:vocation("knight;true", "elite knight;true")
spell:id(133)
spell:cooldown(2 * 1000)
spell:groupCooldown(2 * 1000, 2 * 1000)
spell:level(60)
spell:mana(290)
spell:isSelfTarget(true)
spell:isAggressive(false)
spell:isPremium(true)
spell:needLearn(false)
spell:register()