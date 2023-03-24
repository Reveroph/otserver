local hunter = TalkAction("!hunteraddon")

function hunter.onSay(player, words, param)	
    if player:removeMoneyBank(135000) then
        player:getPosition():sendMagicEffect(CONST_ME_MAGIC_BLUE)
        player:addOutfitAddon(137, 3) 
		player:addOutfitAddon(129, 3)
        player:sendTextMessage(22, "Voce Recebeu o Addon Hunter Full!")
    else
        player:getPosition():sendMagicEffect(CONST_ME_POFF)
      player:sendTextMessage(22, "Precisa de 135k")
    end
end

hunter:register()
