local oriental = TalkAction("!orientaladdon")

function oriental.onSay(player, words, param)	
    if player:removeMoneyBank(735000) then
        player:getPosition():sendMagicEffect(CONST_ME_MAGIC_BLUE)
        player:addOutfitAddon(146, 3) 
		player:addOutfitAddon(150, 3)
        player:sendTextMessage(22, "Voce Recebeu o Addon oriental Full!")
    else
        player:getPosition():sendMagicEffect(CONST_ME_POFF)
      player:sendTextMessage(22, "Precisa de 735k")
    end
end

oriental:register()
