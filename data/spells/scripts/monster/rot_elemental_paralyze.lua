local combat = Combat()
combat:setParameter(COMBAT_PARAM_EFFECT, CONST_ME_SOUND_GREEN)

local condition = Condition(CONDITION_PARALYZE)
condition:setParameter(CONDITION_PARAM_TICKS, 20000)
condition:setFormula(-0.45, 0, -0.65, 0)
combat:addCondition(condition)

local area = createCombatArea(AREA_CIRCLE2X2)
combat:setArea(area)
combat:addCondition(condition)

function onCastSpell(creature, var)
	return combat:execute(creature, var)
end
