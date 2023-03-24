local deathherald = TalkAction("!deathheraldaddon")

function deathherald.onSay(player, words, param)	
    if player:removeMoneyBank(25000000) then
        player:getPosition():sendMagicEffect(CONST_ME_MAGIC_BLUE)
        player:addOutfitAddon(667, 3) 
		player:addOutfitAddon(666, 3)
        player:sendTextMessage(22, "Voce Recebeu o death herald Full!")
    else
        player:getPosition():sendMagicEffect(CONST_ME_POFF)
      player:sendTextMessage(22, "Precisa de 25kk")
    end
end

deathherald:register()
