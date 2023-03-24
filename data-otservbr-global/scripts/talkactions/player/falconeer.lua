local falconer = TalkAction("!falconeraddon")

function falconer.onSay(player, words, param)	
    if player:removeMoneyBank(25000000) then
        player:getPosition():sendMagicEffect(CONST_ME_MAGIC_BLUE)
        player:addOutfitAddon(1282, 3) 
		player:addOutfitAddon(1283, 3)
        player:sendTextMessage(22, "Voce Recebeu o falconer Full!")
    else
        player:getPosition():sendMagicEffect(CONST_ME_POFF)
      player:sendTextMessage(22, "Precisa de 25kk")
    end
end

falconer:register()
