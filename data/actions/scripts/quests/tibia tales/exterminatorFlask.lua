function onUse(player, item, fromPosition, target, toPosition, isHotkey)
	if target.actionid ~= 4207 then
		return false
	end

	if player:getStorageValue(PlayerStorageKeys.TibiaTales.TheExterminator) ~= 1 then
		return false
	end

	player:setStorageValue(PlayerStorageKeys.TibiaTales.TheExterminator, 2)
	item:transform(2006, 0)
	toPosition:sendMagicEffect(CONST_ME_GREEN_RINGS)
	return true
end
