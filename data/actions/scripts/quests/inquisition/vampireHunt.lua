local altars = {
	Position(32777, 31982, 9),
	Position(32779, 31977, 9),
	Position(32781, 31982, 9)
}

function onUse(player, item, fromPosition, target, toPosition, isHotkey)
	if player:getStorageValue(PlayerStorageKeys.TheInquisition.Questline) == 8 then
		player:setStorageValue(PlayerStorageKeys.TheInquisition.Questline, 9)
		player:setStorageValue(PlayerStorageKeys.TheInquisition.Mission03, 4) -- The Inquisition Questlog- "Mission 3: Vampire Hunt"
		local k = {}
		for i = 1, #altars do
			local tmp = Tile(altars[i]):getItemById(2199)
			if not tmp then
				Game.createMonster("The Count", toPosition)
				return true
			else
				k[#k + 1] = tmp
			end
		end
		for i = 1, #k do
			k[i]:remove()
		end
		Game.createMonster("The Weakened Count", toPosition)
		return true
	end
end