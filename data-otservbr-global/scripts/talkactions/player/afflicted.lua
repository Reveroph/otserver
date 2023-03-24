local afflicted = TalkAction("!afflictedaddon")

function afflicted.onSay(player, words, param)	
    if player:removeMoneyBank(100000) then
        player:getPosition():sendMagicEffect(CONST_ME_MAGIC_BLUE)
        player:addOutfitAddon(431, 3) 
		player:addOutfitAddon(430, 3)
        player:sendTextMessage(22, "Voce Recebeu o Addon afflicted Full!")
    else
        player:getPosition():sendMagicEffect(CONST_ME_POFF)
      player:sendTextMessage(22, "Precisa de 100k")
    end
end

afflicted:register()
