local config = {
	arenaPosition = Position(33154, 31415, 7),
	successPosition = Position(33145, 31419, 7)
}

local function completeTest(cid)
	local player = Player(cid)
	if not player then
		return true
	end

	if player:getStorageValue(PlayerStorageKeys.TheNewFrontier.Questline) == 19 then
		player:teleportTo(config.successPosition)
		player:say('You have passed the test. Report to Curos.', TALKTYPE_MONSTER_SAY)
	end
end

function onStepIn(creature, item, position, fromPosition)
	local player = creature:getPlayer()
	if not player then
		return true
	end

	if player:getStorageValue(PlayerStorageKeys.TheNewFrontier.Questline) ~= 18 then
		player:teleportTo(fromPosition)
		fromPosition:sendMagicEffect(CONST_ME_TELEPORT)
		player:sendTextMessage(MESSAGE_STATUS_SMALL, 'You don\'t have access to this area.')
		return true
	end

	addEvent(completeTest, 2 * 60 * 1000, player.uid)
	player:setStorageValue(PlayerStorageKeys.TheNewFrontier.Questline, 19)
	player:teleportTo(config.arenaPosition)
	config.arenaPosition:sendMagicEffect(CONST_ME_TELEPORT)
	return true
end
