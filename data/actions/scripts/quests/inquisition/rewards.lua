local rewards = {
	[1300] = 8890,
	[1301] = 8918,
	[1302] = 8881,
	[1303] = 8888,
	[1304] = 8851,
	[1305] = 8924,
	[1306] = 8928,
	[1307] = 8930,
	[1308] = 8854
}

function onUse(player, item, fromPosition, target, toPosition, isHotkey)
	if player:getStorageValue(PlayerStorageKeys.TheInquisition.Reward) < 1 then
		player:setStorageValue(PlayerStorageKeys.TheInquisition.Reward, 1)
		player:setStorageValue(PlayerStorageKeys.TheInquisition.Questline, 25)
		player:setStorageValue(PlayerStorageKeys.TheInquisition.Mission07, 5) -- The Inquisition Questlog- "Mission 7: The Shadow Nexus"
		player:addItem(rewards[item.uid], 1)
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You have found " .. ItemType(rewards[item.uid]):getName() .. ".")
		player:addAchievement('Master of the Nexus')
	else
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "The chest is empty.")
	end
	return true
end
