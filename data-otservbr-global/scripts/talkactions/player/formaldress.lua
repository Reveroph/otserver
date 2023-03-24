local formaldress = TalkAction("!formaldressaddon")

function formaldress.onSay(player, words, param)	
    if player:removeMoneyBank(25000000) then
        player:getPosition():sendMagicEffect(CONST_ME_MAGIC_BLUE)
        player:addOutfitAddon(1461, 3) 
		player:addOutfitAddon(1460, 3)
        player:sendTextMessage(22, "Voce Recebeu o formal dress Full!")
    else
        player:getPosition():sendMagicEffect(CONST_ME_POFF)
      player:sendTextMessage(22, "Precisa de 25kk")
    end
end

formaldress:register()
