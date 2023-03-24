local forestwarden = TalkAction("!forestwardenaddon")

function forestwarden.onSay(player, words, param)	
    if player:removeMoneyBank(25000000) then
        player:getPosition():sendMagicEffect(CONST_ME_MAGIC_BLUE)
        player:addOutfitAddon(1415, 3) 
		player:addOutfitAddon(1416, 3)
        player:sendTextMessage(22, "Voce Recebeu o forest warden Full!")
    else
        player:getPosition():sendMagicEffect(CONST_ME_POFF)
      player:sendTextMessage(22, "Precisa de 25kk")
    end
end

forestwarden:register()
