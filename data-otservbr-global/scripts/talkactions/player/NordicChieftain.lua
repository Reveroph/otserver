local nordicchieftain = TalkAction("!nordicchieftainaddon")

function nordicchieftain.onSay(player, words, param)	
    if player:removeMoneyBank(25000000) then
        player:getPosition():sendMagicEffect(CONST_ME_MAGIC_BLUE)
        player:addOutfitAddon(1501, 3) 
		player:addOutfitAddon(1500, 3)
        player:sendTextMessage(22, "Voce Recebeu o Nordic Chieftain Full!")
    else
        player:getPosition():sendMagicEffect(CONST_ME_POFF)
      player:sendTextMessage(22, "Precisa de 25kk")
    end
end

nordicchieftain:register()
