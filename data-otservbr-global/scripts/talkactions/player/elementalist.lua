local elementalist = TalkAction("!elementalistaddon")

function elementalist.onSay(player, words, param)	
    if player:removeMoneyBank(10000000) then
        player:getPosition():sendMagicEffect(CONST_ME_MAGIC_BLUE)
        player:addOutfitAddon(432, 3) 
		player:addOutfitAddon(433, 3)
        player:sendTextMessage(22, "Voce Recebeu o Addon elementalist Full!")
    else
        player:getPosition():sendMagicEffect(CONST_ME_POFF)
      player:sendTextMessage(22, "Precisa de 10kk")
    end
end

elementalist:register()
