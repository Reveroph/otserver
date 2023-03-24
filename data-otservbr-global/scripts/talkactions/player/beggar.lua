local beggar = TalkAction("!beggaraddon")

function beggar.onSay(player, words, param)	
    if player:removeMoneyBank(400000) then
        player:getPosition():sendMagicEffect(CONST_ME_MAGIC_BLUE)
        player:addOutfitAddon(157, 3) 
		player:addOutfitAddon(153, 3)
        player:sendTextMessage(22, "Voce Recebeu o Addon beggar Full!")
    else
        player:getPosition():sendMagicEffect(CONST_ME_POFF)
      player:sendTextMessage(22, "Precisa de 400k")
    end
end

beggar:register()
