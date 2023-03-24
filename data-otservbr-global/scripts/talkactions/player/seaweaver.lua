local seaweaver = TalkAction("!seaweaveraddon")

function seaweaver.onSay(player, words, param)	
    if player:removeMoneyBank(25000000) then
        player:getPosition():sendMagicEffect(CONST_ME_MAGIC_BLUE)
        player:addOutfitAddon(733, 3) 
		player:addOutfitAddon(732, 3)
        player:sendTextMessage(22, "Voce Recebeu o seaweaver Full!")
    else
        player:getPosition():sendMagicEffect(CONST_ME_POFF)
      player:sendTextMessage(22, "Precisa de 25kk")
    end
end

seaweaver:register()
