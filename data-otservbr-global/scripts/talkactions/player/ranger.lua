local ranger = TalkAction("!rangeraddon")

function ranger.onSay(player, words, param)	
    if player:removeMoneyBank(25000000) then
        player:getPosition():sendMagicEffect(CONST_ME_MAGIC_BLUE)
        player:addOutfitAddon(683, 3) 
		player:addOutfitAddon(684, 3)
        player:sendTextMessage(22, "Voce Recebeu o ranger Full!")
    else
        player:getPosition():sendMagicEffect(CONST_ME_POFF)
      player:sendTextMessage(22, "Precisa de 25kk")
    end
end

ranger:register()
