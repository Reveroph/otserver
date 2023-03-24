local handoftheinquisition = TalkAction("!handoftheinquisitionaddon")

function handoftheinquisition.onSay(player, words, param)	
    if player:removeMoneyBank(65000000) then
        player:getPosition():sendMagicEffect(CONST_ME_MAGIC_BLUE)
        player:addOutfitAddon(1243, 3) 
		player:addOutfitAddon(1244, 3)
        player:sendTextMessage(22, "Voce Recebeu o hand of the inquisition outfit Full!")
    else
        player:getPosition():sendMagicEffect(CONST_ME_POFF)
      player:sendTextMessage(22, "Precisa de 65kk")
    end
end

handoftheinquisition:register()
