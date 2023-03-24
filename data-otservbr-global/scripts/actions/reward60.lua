local reward60 = Action()
function reward60.onUse(player, item, fromPosition, target, toPosition, isHotkey)
	if player:getStorageValue(13506) == 1 then
		return false
	end

	player:setStorageValue(13506, 1)
	player:addItem(3043, 30)
	return true
end

reward60:aid(13506)
reward60:register()