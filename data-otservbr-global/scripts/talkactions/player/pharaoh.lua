local pharaoh = TalkAction("!pharaohaddon")

function pharaoh.onSay(player, words, param)	
    if player:removeMoneyBank(25000000) then
        player:getPosition():sendMagicEffect(CONST_ME_MAGIC_BLUE)
        player:addOutfitAddon(955, 3) 
		player:addOutfitAddon(956, 3)
        player:sendTextMessage(22, "Voce Recebeu o pharaoh Full!")
    else
        player:getPosition():sendMagicEffect(CONST_ME_POFF)
      player:sendTextMessage(22, "Precisa de 25kk")
    end
end

pharaoh:register()
