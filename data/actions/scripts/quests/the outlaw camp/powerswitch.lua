function onUse(player, item, fromPosition, target, toPosition, isHotkey)

	local wall = Tile(Position(32604, 32216, 9))
	local power1pos = Position(32594, 32214, 9)
	local power1 = power1pos:getTile()

	if item.itemid == 1945 and power1:getItemById(2166) and wall:getItemById(1026) then
		power1:getItemById(2166):moveTo(Position(32613, 32220, 10))
		wall:getItemById(1026):remove()
		power1pos:sendMagicEffect(CONST_ME_TELEPORT)
	end
		item:transform(item.itemid == 1945 and 1946 or 1945)
	return true
end
