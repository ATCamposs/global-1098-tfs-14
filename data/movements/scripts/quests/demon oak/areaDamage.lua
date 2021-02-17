function onStepIn(creature, item, position, fromPosition)
	local player = creature:getPlayer()
	if not player then
		return true
	end

	if math.random(24) == 1 then
		doTargetCombat(0, player, COMBAT_EARTHDAMAGE, -270, -310, CONST_ME_BIGPLANTS)
	end
	return true
end
