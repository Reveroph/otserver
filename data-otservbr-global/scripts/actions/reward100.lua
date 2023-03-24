local reward100 = Action()
function reward100.onUse(player, item, fromPosition, target, toPosition, isHotkey)
	if player:getStorageValue(13507) == 1 then
		return false
	end

	player:setStorageValue(13507, 1)
	player:addItem(3043, 100)
	return true
end

reward100:aid(13507)
reward100:register()