local entrepreneur = TalkAction("!entrepreneuraddon")

function entrepreneur.onSay(player, words, param)	
    if player:removeMoneyBank(1700000) then
        player:getPosition():sendMagicEffect(CONST_ME_MAGIC_BLUE)
        player:addOutfitAddon(472, 3) 
		player:addOutfitAddon(471, 3)
        player:sendTextMessage(22, "Voce Recebeu o Addon entrepreneur Full!")
    else
        player:getPosition():sendMagicEffect(CONST_ME_POFF)
      player:sendTextMessage(22, "Precisa de 1.7kk")
    end
end

entrepreneur:register()
