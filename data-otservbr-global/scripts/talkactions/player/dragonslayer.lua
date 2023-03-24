local dragonslayer = TalkAction("!dragonslayeraddon")

function dragonslayer.onSay(player, words, param)	
    if player:removeMoneyBank(600000000) then
        player:getPosition():sendMagicEffect(CONST_ME_MAGIC_BLUE)
        player:addOutfitAddon(1289, 3) 
		player:addOutfitAddon(1288, 3)
        player:sendTextMessage(22, "Voce Recebeu o dragon slayer Full!")
    else
        player:getPosition():sendMagicEffect(CONST_ME_POFF)
      player:sendTextMessage(22, "Precisa de 600kk")
    end
end

dragonslayer:register()
