local grovekeeper = TalkAction("!grovekeepernaddon")

function grovekeeper.onSay(player, words, param)	
    if player:removeMoneyBank(25000000) then
        player:getPosition():sendMagicEffect(CONST_ME_MAGIC_BLUE)
        player:addOutfitAddon(908, 3) 
		player:addOutfitAddon(909, 3)
        player:sendTextMessage(22, "Voce Recebeu o grovekeeper Full!")
    else
        player:getPosition():sendMagicEffect(CONST_ME_POFF)
      player:sendTextMessage(22, "Precisa de 25kk")
    end
end

grovekeeper:register()
