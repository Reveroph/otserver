local discoverer = TalkAction("!discovereraddon")

function discoverer.onSay(player, words, param)	
    if player:removeMoneyBank(25000000) then
        player:getPosition():sendMagicEffect(CONST_ME_MAGIC_BLUE)
        player:addOutfitAddon(1095, 3) 
		player:addOutfitAddon(1094, 3)
        player:sendTextMessage(22, "Voce Recebeu o discoverer Full!")
    else
        player:getPosition():sendMagicEffect(CONST_ME_POFF)
      player:sendTextMessage(22, "Precisa de 25kk")
    end
end

discoverer:register()
