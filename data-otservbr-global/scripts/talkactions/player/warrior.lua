local warrior = TalkAction("!warrioraddon")

function warrior.onSay(player, words, param)	
    if player:removeMoneyBank(500000) then
        player:getPosition():sendMagicEffect(CONST_ME_MAGIC_BLUE)
        player:addOutfitAddon(142, 3) 
		player:addOutfitAddon(134, 3)
        player:sendTextMessage(22, "Voce Recebeu o Addon Warrior Full!")
    else
        player:getPosition():sendMagicEffect(CONST_ME_POFF)
      player:sendTextMessage(22, "Precisa de 500k")
    end
end

warrior:register()
