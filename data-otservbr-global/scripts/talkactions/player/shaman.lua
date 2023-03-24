local shaman = TalkAction("!shamanaddon")

function shaman.onSay(player, words, param)	
    if player:removeMoneyBank(2000000) then
        player:getPosition():sendMagicEffect(CONST_ME_MAGIC_BLUE)
        player:addOutfitAddon(154, 3) 
		player:addOutfitAddon(158, 3)
        player:sendTextMessage(22, "Voce Recebeu o Addon shaman Full!")
    else
        player:getPosition():sendMagicEffect(CONST_ME_POFF)
      player:sendTextMessage(22, "Precisa de 2kk")
    end
end

shaman:register()
