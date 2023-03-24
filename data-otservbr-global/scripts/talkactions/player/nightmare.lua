local nightmare = TalkAction("!nightmareaddon")

function nightmare.onSay(player, words, param)	
    if player:removeMoneyBank(700000) then
        player:getPosition():sendMagicEffect(CONST_ME_MAGIC_BLUE)
        player:addOutfitAddon(268, 3) 
		player:addOutfitAddon(269, 3)
        player:sendTextMessage(22, "Voce Recebeu o Addon nightmare Full!")
    else
        player:getPosition():sendMagicEffect(CONST_ME_POFF)
      player:sendTextMessage(22, "Precisa de 700k")
    end
end

nightmare:register()
