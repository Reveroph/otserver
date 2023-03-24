local battlemage = TalkAction("!battlemageaddon")

function battlemage.onSay(player, words, param)	
    if player:removeMoneyBank(25000000) then
        player:getPosition():sendMagicEffect(CONST_ME_MAGIC_BLUE)
        player:addOutfitAddon(1069, 3) 
		player:addOutfitAddon(1070, 3)
        player:sendTextMessage(22, "Voce Recebeu o battle mage Full!")
    else
        player:getPosition():sendMagicEffect(CONST_ME_POFF)
      player:sendTextMessage(22, "Precisa de 25kk")
    end
end

battlemage:register()
