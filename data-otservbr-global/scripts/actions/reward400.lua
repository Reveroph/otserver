local reward400 = Action()
function reward400.onUse(player, item, fromPosition, target, toPosition, isHotkey)
	if player:getStorageValue(14630) == 1 then
		return false
	end

	player:setStorageValue(14630, 1)
	player:addItem(34109, 1)
	player:addItem(39546, 1)
	return true
end

reward400:aid(14630)
reward400:register()