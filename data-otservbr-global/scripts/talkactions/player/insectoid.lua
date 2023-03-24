local insectoid = TalkAction("!insectoidaddon")

function insectoid.onSay(player, words, param)	
    if player:removeMoneyBank(12000000) then
        player:getPosition():sendMagicEffect(CONST_ME_MAGIC_BLUE)
        player:addOutfitAddon(465, 3) 
		player:addOutfitAddon(466, 3)
        player:sendTextMessage(22, "Voce Recebeu o Addon insectoid Full!")
    else
        player:getPosition():sendMagicEffect(CONST_ME_POFF)
      player:sendTextMessage(22, "Precisa de 12kk")
    end
end

insectoid:register()
