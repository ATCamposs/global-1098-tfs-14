function onUse(player, item, fromPosition, target, toPosition, isHotkey)
	if target.actionid ~= 4637 then
		return false
	end

	if player:getStorageValue(PlayerStorageKeys.GravediggerOfDrefia.Mission27) == 1 and player:getStorageValue(PlayerStorageKeys.GravediggerOfDrefia.Mission28) < 1 then
		player:setStorageValue(PlayerStorageKeys.GravediggerOfDrefia.Mission28, 1)
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, 'The flame wavers as it engulfs the chalk. Strange ashes appear beside it.')
		Game.createItem(21446, 1, Position(32983, 32376, 11))
		item:remove(1)
	end
	return true
end