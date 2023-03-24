local mothcape = TalkAction("!mothcapeaddon")

function mothcape.onSay(player, words, param)	
    if player:removeMoneyBank(25000000) then
        player:getPosition():sendMagicEffect(CONST_ME_MAGIC_BLUE)
        player:addOutfitAddon(1339, 3) 
		player:addOutfitAddon(1338, 3)
        player:sendTextMessage(22, "Voce Recebeu o moth cape Full!")
    else
        player:getPosition():sendMagicEffect(CONST_ME_POFF)
      player:sendTextMessage(22, "Precisa de 25kk")
    end
end

mothcape:register()
