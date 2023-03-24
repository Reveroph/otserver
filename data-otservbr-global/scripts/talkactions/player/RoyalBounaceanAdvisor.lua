local royalbounaceanadvisor = TalkAction("!royalbounaceanadvisoraddon")

function royalbounaceanadvisor.onSay(player, words, param)	
    if player:removeMoneyBank(25000000) then
        player:getPosition():sendMagicEffect(CONST_ME_MAGIC_BLUE)
        player:addOutfitAddon(1437, 3) 
		player:addOutfitAddon(1436, 3)
        player:sendTextMessage(22, "Voce Recebeu o Royal Bounacean Advisor Full!")
    else
        player:getPosition():sendMagicEffect(CONST_ME_POFF)
      player:sendTextMessage(22, "Precisa de 25kk")
    end
end

royalbounaceanadvisor:register()
