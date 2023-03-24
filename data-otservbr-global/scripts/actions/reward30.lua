local reward30 = Action()
function reward30.onUse(player, item, fromPosition, target, toPosition, isHotkey)
	if player:getStorageValue(13505) == 1 then
		return false
	end

	player:setStorageValue(13505, 1)
	player:addItem(3043, 10)
	return true
end

reward30:aid(13505)
reward30:register()