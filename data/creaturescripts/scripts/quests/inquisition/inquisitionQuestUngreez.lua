function onKill(creature, target)
	local targetMonster = target:getMonster()
	if not targetMonster then
		return true
	end

	if targetMonster:getName():lower() ~= 'ungreez' then
		return true
	end

	local player = creature:getPlayer()
	if player:getStorageValue(PlayerStorageKeys.TheInquisition.Questline) == 18 then
		-- The Inquisition Questlog- 'Mission 6: The Demon Ungreez'
		player:setStorageValue(PlayerStorageKeys.TheInquisition.Mission06, 2)
		player:setStorageValue(PlayerStorageKeys.TheInquisition.Questline, 19)
	end
	return true
end
