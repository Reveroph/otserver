local runemaster = TalkAction("!runemasteraddon")

function runemaster.onSay(player, words, param)	
    if player:removeMoneyBank(25000000) then
        player:getPosition():sendMagicEffect(CONST_ME_MAGIC_BLUE)
        player:addOutfitAddon(1384, 3) 
		player:addOutfitAddon(1385, 3)
        player:sendTextMessage(22, "Voce Recebeu o rune master Full!")
    else
        player:getPosition():sendMagicEffect(CONST_ME_POFF)
      player:sendTextMessage(22, "Precisa de 25kk")
    end
end

runemaster:register()
