local chaosacolyte = TalkAction("!chaosacolyteaddon")

function chaosacolyte.onSay(player, words, param)	
    if player:removeMoneyBank(25000000) then
        player:getPosition():sendMagicEffect(CONST_ME_MAGIC_BLUE)
        player:addOutfitAddon(664, 3) 
		player:addOutfitAddon(665, 3)
        player:sendTextMessage(22, "Voce Recebeu o chaos acolyte Full!")
    else
        player:getPosition():sendMagicEffect(CONST_ME_POFF)
      player:sendTextMessage(22, "Precisa de 25kk")
    end
end

chaosacolyte:register()
