local veteranpaladin = TalkAction("!veteranpaladinaddon")

function veteranpaladin.onSay(player, words, param)	
    if player:removeMoneyBank(25000000) then
        player:getPosition():sendMagicEffect(CONST_ME_MAGIC_BLUE)
        player:addOutfitAddon(1205, 3) 
		player:addOutfitAddon(1204, 3)
        player:sendTextMessage(22, "Voce Recebeu o veteran paladin Full!")
    else
        player:getPosition():sendMagicEffect(CONST_ME_POFF)
      player:sendTextMessage(22, "Precisa de 25kk")
    end
end

veteranpaladin:register()
