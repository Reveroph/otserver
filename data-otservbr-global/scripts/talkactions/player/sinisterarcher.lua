local sinisterarcher = TalkAction("!sinisterarcheraddon")

function sinisterarcher.onSay(player, words, param)	
    if player:removeMoneyBank(25000000) then
        player:getPosition():sendMagicEffect(CONST_ME_MAGIC_BLUE)
        player:addOutfitAddon(1102, 3) 
		player:addOutfitAddon(1103, 3)
        player:sendTextMessage(22, "Voce Recebeu o sinister archer Full!")
    else
        player:getPosition():sendMagicEffect(CONST_ME_POFF)
      player:sendTextMessage(22, "Precisa de 25kk")
    end
end

sinisterarcher:register()
