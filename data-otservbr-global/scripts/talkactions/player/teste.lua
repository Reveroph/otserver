local teste = TalkAction("!teste")

function teste.onSay(player, words, param)	
	--local storageExemplo = 13518 
	player:sendTextMessage(22, "Hmmm boiola!!!!")
	--player:addHealth(500)
	if player:getStorageValue(57503) < 1 then
		player:setStorageValue(57503, 1)
	elseif player:getStorageValue(57503) == 1 then
		player:setStorageValue(57503, 0)
	end

	return true
end

teste:register()
