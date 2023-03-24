local bestiaryPotion = Action()

function bestiaryPotion.onUse(player, item, fromPosition, target, toPosition, isHotkey)
	local cargas = 150
	if player:getStorageValue(39500) < 1 then
			player:setStorageValue(39500, cargas)
			item:remove(1)
			player:sendTextMessage(29, "Voce Recebeu "..cargas.." cargas de Bestiary Boost!")
			player:getPosition():sendMagicEffect(10)
		else
			player:sendCancelMessage("Voce Ainda possui: "..(player:getStorageValue(39500)).." Cargas de Bestiary Boost")
	end

	return true
end

bestiaryPotion:id(36728)
bestiaryPotion:register()
