function onStepIn(creature, item, position, fromPosition)
	local player = creature:getPlayer()
	if not player or player:getStorageValue(PlayerStorageKeys.TheInquisition.RewardRoomText) == 1 then
		return true
	end

	player:setStorageValue(PlayerStorageKeys.TheInquisition.RewardRoomText, 1)
	player:say('You can choose exactly one of these chets. Choose wisely!', TALKTYPE_MONSTER_SAY, false, player)
	return true
end
