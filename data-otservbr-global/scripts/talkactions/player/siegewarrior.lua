local siegewarrior = TalkAction("!siegemasteraddon")

function siegewarrior.onSay(player, words, param)	
    if player:removeMoneyBank(25000000) then
        player:getPosition():sendMagicEffect(CONST_ME_MAGIC_BLUE)
        player:addOutfitAddon(1051, 3) 
		player:addOutfitAddon(1050, 3)
        player:sendTextMessage(22, "Voce Recebeu o siege master Full!")
    else
        player:getPosition():sendMagicEffect(CONST_ME_POFF)
      player:sendTextMessage(22, "Precisa de 25kk")
    end
end

siegewarrior:register()
