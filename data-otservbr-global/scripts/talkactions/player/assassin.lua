local assassin = TalkAction("!assassinaddon")

function assassin.onSay(player, words, param)	
    if player:removeMoneyBank(1500000) then
        player:getPosition():sendMagicEffect(CONST_ME_MAGIC_BLUE)
        player:addOutfitAddon(152, 3) 
		player:addOutfitAddon(156, 3)
        player:sendTextMessage(22, "Voce Recebeu o Addon assassin Full!")
    else
        player:getPosition():sendMagicEffect(CONST_ME_POFF)
      player:sendTextMessage(22, "Precisa de 1.5kk")
    end
end

assassin:register()
