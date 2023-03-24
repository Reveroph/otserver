local deepling = TalkAction("!deeplingaddon")

function deepling.onSay(player, words, param)	
    if player:removeMoneyBank(7350000) then
        player:getPosition():sendMagicEffect(CONST_ME_MAGIC_BLUE)
        player:addOutfitAddon(464, 3) 
		player:addOutfitAddon(463, 3)
        player:sendTextMessage(22, "Voce Recebeu o Addon deepling Full!")
    else
        player:getPosition():sendMagicEffect(CONST_ME_POFF)
      player:sendTextMessage(22, "Precisa de 7.35kk")
    end
end

deepling:register()
