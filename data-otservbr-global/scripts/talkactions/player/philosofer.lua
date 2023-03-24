local philosopher = TalkAction("!philosopheraddon")

function philosopher.onSay(player, words, param)	
    if player:removeMoneyBank(25000000) then
        player:getPosition():sendMagicEffect(CONST_ME_MAGIC_BLUE)
        player:addOutfitAddon(874, 3) 
		player:addOutfitAddon(873, 3)
        player:sendTextMessage(22, "Voce Recebeu o Philosopher Full!")
    else
        player:getPosition():sendMagicEffect(CONST_ME_POFF)
      player:sendTextMessage(22, "Precisa de 25kk")
    end
end

philosopher:register()
