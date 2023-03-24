local firstITEM = Action()
function firstITEM.onUse(player, item, fromPosition, itemEx, toPosition)
	if player:getStorageValue(19131) < 1 then
		local backpack = player:addItem(39693, 1)
		backpack:addItem(3043, 1)
		backpack:addItem(3035, 50)
		backpack:addItem(5710, 1)
		backpack:addItem(646, 1)
		backpack:addItem(16277, 1)
		backpack:addItem(3725, 25)
		player:setStorageValue(19131, 1)
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You have found a little help.")
	else
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You already got your reward.")
	end
	return true
end

firstITEM:aid(16505)
firstITEM:register()