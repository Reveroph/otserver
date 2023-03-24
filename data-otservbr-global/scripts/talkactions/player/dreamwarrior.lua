local dreamwarrior = TalkAction("!dreamwarrioraddon")

function dreamwarrior.onSay(player, words, param)	
    if player:removeMoneyBank(25000000) then
        player:getPosition():sendMagicEffect(CONST_ME_MAGIC_BLUE)
        player:addOutfitAddon(1146, 3) 
		player:addOutfitAddon(1147, 3)
        player:sendTextMessage(22, "Voce Recebeu o dream warrior Full!")
    else
        player:getPosition():sendMagicEffect(CONST_ME_POFF)
      player:sendTextMessage(22, "Precisa de 25kk")
    end
end

dreamwarrior:register()
