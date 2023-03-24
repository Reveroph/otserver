local champion = TalkAction("!championaddon")

function champion.onSay(player, words, param)	
    if player:removeMoneyBank(25000000) then
        player:getPosition():sendMagicEffect(CONST_ME_MAGIC_BLUE)
        player:addOutfitAddon(633, 3) 
		player:addOutfitAddon(632, 3)
        player:sendTextMessage(22, "Voce Recebeu o champion Full!")
    else
        player:getPosition():sendMagicEffect(CONST_ME_POFF)
      player:sendTextMessage(22, "Precisa de 25kk")
    end
end

champion:register()
