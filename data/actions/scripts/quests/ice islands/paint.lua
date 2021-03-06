local function transformBack(position, itemId, transformId)
	local item = Tile(position):getItemById(itemId)
	if item then
		item:transform(transformId)
		position:sendMagicEffect(CONST_ME_MAGIC_GREEN)
	end
end

function onUse(player, item, fromPosition, target, toPosition, isHotkey)
	if target.itemid ~= 7178 then
		return false
	end

	if player:getStorageValue(PlayerStorageKeys.TheIceIslands.Questline) == 8 then
		toPosition:sendMagicEffect(CONST_ME_MAGIC_GREEN)
		player:setStorageValue(PlayerStorageKeys.TheIceIslands.PaintSeal, player:getStorageValue(PlayerStorageKeys.TheIceIslands.PaintSeal) + 1)
		if player:getStorageValue(PlayerStorageKeys.TheIceIslands.PaintSeal) == 2 then
			player:setStorageValue(PlayerStorageKeys.TheIceIslands.Questline, 9)
			player:setStorageValue(PlayerStorageKeys.TheIceIslands.Mission04, 2) -- Questlog The Ice Islands Quest, Nibelor 3: Artful Sabotage
		end
		player:say('You painted a baby seal.', TALKTYPE_MONSTER_SAY)
		target:transform(7252)
		addEvent(transformBack, 30 * 1000, toPosition, 7252, 7178)
	end
	return true
end