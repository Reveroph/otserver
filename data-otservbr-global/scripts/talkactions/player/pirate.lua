local pirate = TalkAction("!pirateaddon")

function pirate.onSay(player, words, param)	
    if player:removeMoneyBank(1800000) then
        player:getPosition():sendMagicEffect(CONST_ME_MAGIC_BLUE)
        player:addOutfitAddon(155, 3) 
		player:addOutfitAddon(151, 3)
        player:sendTextMessage(22, "Voce Recebeu o Addon pirate Full!")
    else
        player:getPosition():sendMagicEffect(CONST_ME_POFF)
      player:sendTextMessage(22, "Precisa de 1.8kk")
    end
end

pirate:register()
