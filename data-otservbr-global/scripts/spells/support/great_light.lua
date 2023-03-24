local combat = Combat()
combat:setParameter(COMBAT_PARAM_EFFECT, CONST_ME_MAGIC_BLUE)
combat:setParameter(COMBAT_PARAM_AGGRESSIVE, false)

local condition = Condition(CONDITION_LIGHT)
condition:setParameter(CONDITION_PARAM_LIGHT_LEVEL, 16)
condition:setParameter(CONDITION_PARAM_LIGHT_COLOR, 215)
condition:setParameter(CONDITION_PARAM_TICKS, (100 * 33 + 10) * 1500)
combat:addCondition(condition)

local spell = Spell("instant")

function spell.onCastSpell(creature, variant)
	return combat:execute(creature, variant)
end

spell:name("Great Light")
spell:words("utevo gran lux")
spell:group("support")
spell:vocation("druid;true", "elder druid;true", "knight;true", "elite knight;true", "paladin;true", "royal paladin;true", "sorcerer;true", "master sorcerer;true")
spell:id(11)
spell:cooldown(2 * 1000)
spell:groupCooldown(2 * 1000)
spell:level(13)
spell:mana(60)
spell:isSelfTarget(true)
spell:isAggressive(false)
spell:needLearn(false)
spell:register()
