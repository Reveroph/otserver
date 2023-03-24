local spiritcaller = TalkAction("!spiritcalleraddon")

function spiritcaller.onSay(player, words, param)	
    if player:removeMoneyBank(25000000) then
        player:getPosition():sendMagicEffect(CONST_ME_MAGIC_BLUE)
        player:addOutfitAddon(699, 3) 
		player:addOutfitAddon(698, 3)
        player:sendTextMessage(22, "Voce Recebeu o spirit caller Full!")
    else
        player:getPosition():sendMagicEffect(CONST_ME_POFF)
      player:sendTextMessage(22, "Precisa de 25kk")
    end
end

spiritcaller:register()
