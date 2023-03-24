local golden = TalkAction("!goldenaddon")

function golden.onSay(player, words, param)	
    if player:removeMoneyBank(1000000000) then
        player:getPosition():sendMagicEffect(CONST_ME_MAGIC_BLUE)
        player:addOutfitAddon(1211, 3) 
		player:addOutfitAddon(1210, 3)
        player:sendTextMessage(22, "Voce Recebeu o golden outfit Full!")
    else
        player:getPosition():sendMagicEffect(CONST_ME_POFF)
      player:sendTextMessage(22, "Precisa de 1kkk")
    end
end

golden:register()
