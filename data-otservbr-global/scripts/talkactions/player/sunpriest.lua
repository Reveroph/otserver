local sunpriest = TalkAction("!sunpriestaddon")

function sunpriest.onSay(player, words, param)	
    if player:removeMoneyBank(25000000) then
        player:getPosition():sendMagicEffect(CONST_ME_MAGIC_BLUE)
        player:addOutfitAddon(1023, 3) 
		player:addOutfitAddon(1024, 3)
        player:sendTextMessage(22, "Voce Recebeu o sun priest Full!")
    else
        player:getPosition():sendMagicEffect(CONST_ME_POFF)
      player:sendTextMessage(22, "Precisa de 25kk")
    end
end

sunpriest:register()
