local lupinewarden = TalkAction("!lupinewardenaddon")

function lupinewarden.onSay(player, words, param)	
    if player:removeMoneyBank(25000000) then
        player:getPosition():sendMagicEffect(CONST_ME_MAGIC_BLUE)
        player:addOutfitAddon(900, 3) 
		player:addOutfitAddon(899, 3)
        player:sendTextMessage(22, "Voce Recebeu o lupine warden Full!")
    else
        player:getPosition():sendMagicEffect(CONST_ME_POFF)
      player:sendTextMessage(22, "Precisa de 25kk")
    end
end

lupinewarden:register()
