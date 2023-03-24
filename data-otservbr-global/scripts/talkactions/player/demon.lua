local demon = TalkAction("!demonaddon")

function demon.onSay(player, words, param)	
    if player:removeMoneyBank(5000000) then
        player:getPosition():sendMagicEffect(CONST_ME_MAGIC_BLUE)
        player:addOutfitAddon(541, 3) 
		player:addOutfitAddon(542, 3)
        player:sendTextMessage(22, "Voce Recebeu o Addon demon Full!")
    else
        player:getPosition():sendMagicEffect(CONST_ME_POFF)
      player:sendTextMessage(22, "Precisa de 5kk")
    end
end

demon:register()
