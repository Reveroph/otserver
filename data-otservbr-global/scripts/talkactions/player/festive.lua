local festive = TalkAction("!festiveaddon")

function festive.onSay(player, words, param)	
    if player:removeMoneyBank(25000000) then
        player:getPosition():sendMagicEffect(CONST_ME_MAGIC_BLUE)
        player:addOutfitAddon(929, 3) 
		player:addOutfitAddon(931, 3)
        player:sendTextMessage(22, "Voce Recebeu o festive Full!")
    else
        player:getPosition():sendMagicEffect(CONST_ME_POFF)
      player:sendTextMessage(22, "Precisa de 25kk")
    end
end

festive:register()
