local lionofwar = TalkAction("!lionofwaraddon")

function lionofwar.onSay(player, words, param)	
    if player:removeMoneyBank(50000000) then
        player:getPosition():sendMagicEffect(CONST_ME_MAGIC_BLUE)
        player:addOutfitAddon(1206, 3) 
		player:addOutfitAddon(1207, 3)
        player:sendTextMessage(22, "Voce Recebeu o lion of war Full!")
    else
        player:getPosition():sendMagicEffect(CONST_ME_POFF)
      player:sendTextMessage(22, "Precisa de 50kk")
    end
end

lionofwar:register()
