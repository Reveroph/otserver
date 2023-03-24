local soilguardian = TalkAction("!soilguardianaddon")

function soilguardian.onSay(player, words, param)	
    if player:removeMoneyBank(1000000) then
        player:getPosition():sendMagicEffect(CONST_ME_MAGIC_BLUE)
        player:addOutfitAddon(514, 3) 
		player:addOutfitAddon(516, 3)
        player:sendTextMessage(22, "Voce Recebeu o Addon soil guardian Full!")
    else
        player:getPosition():sendMagicEffect(CONST_ME_POFF)
      player:sendTextMessage(22, "Precisa de 1kk")
    end
end

soilguardian:register()
