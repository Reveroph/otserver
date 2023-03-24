local herbalist = TalkAction("!herbalistaddon")

function herbalist.onSay(player, words, param)	
    if player:removeMoneyBank(25000000) then
        player:getPosition():sendMagicEffect(CONST_ME_MAGIC_BLUE)
        player:addOutfitAddon(1020, 3) 
		player:addOutfitAddon(1021, 3)
        player:sendTextMessage(22, "Voce Recebeu o herbalist Full!")
    else
        player:getPosition():sendMagicEffect(CONST_ME_POFF)
      player:sendTextMessage(22, "Precisa de 25kk")
    end
end

herbalist:register()
