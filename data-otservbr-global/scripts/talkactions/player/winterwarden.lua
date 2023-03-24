local winterwarden = TalkAction("!winterwardenaddon")

function winterwarden.onSay(player, words, param)	
    if player:removeMoneyBank(25000000) then
        player:getPosition():sendMagicEffect(CONST_ME_MAGIC_BLUE)
        player:addOutfitAddon(853, 3) 
		player:addOutfitAddon(852, 3)
        player:sendTextMessage(22, "Voce Recebeu o winter warden Full!")
    else
        player:getPosition():sendMagicEffect(CONST_ME_POFF)
      player:sendTextMessage(22, "Precisa de 25kk")
    end
end

winterwarden:register()
