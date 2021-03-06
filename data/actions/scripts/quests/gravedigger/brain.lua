function onUse(player, item, fromPosition, target, toPosition, isHotkey)
	local rightbrain = Tile(Position(33025, 32332, 10))
	local leftbrain = Tile(Position(33020, 32332, 10))
	if player:getStorageValue(PlayerStorageKeys.GravediggerOfDrefia.Mission08) == 1 and player:getStorageValue(PlayerStorageKeys.GravediggerOfDrefia.Mission09) < 1 then
		if leftbrain:getItemById(10576) and rightbrain:getItemById(10576) then
			player:setStorageValue(PlayerStorageKeys.GravediggerOfDrefia.Mission09, 1)
			player:sendTextMessage(MESSAGE_EVENT_ADVANCE, '<brzzl> <frzzp> <fsssh>')
			leftbrain:getItemById(10576):remove()
			rightbrain:getItemById(10576):remove()
			Game.createItem(21395, 1, Position(33022, 32332, 10))
		else
			player:sendTextMessage(MESSAGE_EVENT_ADVANCE, 'No brains')
		end
	else
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, 'You have already got your brain')
	end
	return true
end
