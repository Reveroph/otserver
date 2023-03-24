local firefighter = TalkAction("!firefighteraddon")

function firefighter.onSay(player, words, param)	
    if player:removeMoneyBank(25000000) then
        player:getPosition():sendMagicEffect(CONST_ME_MAGIC_BLUE)
        player:addOutfitAddon(1568, 3) 
		player:addOutfitAddon(1569, 3)
        player:sendTextMessage(22, "Voce Recebeu o fire fighter Full!")
    else
        player:getPosition():sendMagicEffect(CONST_ME_POFF)
      player:sendTextMessage(22, "Precisa de 25kk")
    end
end

firefighter:register()
