local dreamwarden = TalkAction("!dreamwardenaddon")

function dreamwarden.onSay(player, words, param)	
    if player:removeMoneyBank(6000000) then
        player:getPosition():sendMagicEffect(CONST_ME_MAGIC_BLUE)
        player:addOutfitAddon(577, 3) 
		player:addOutfitAddon(578, 3)
        player:sendTextMessage(22, "Voce Recebeu o dream warden Full!")
    else
        player:getPosition():sendMagicEffect(CONST_ME_POFF)
      player:sendTextMessage(22, "Precisa de 6kk")
    end
end

dreamwarden:register()
