local nobleman = TalkAction("!noblemanaddon")

function nobleman.onSay(player, words, param)	
    if player:removeMoneyBank(5000) then
        player:getPosition():sendMagicEffect(CONST_ME_MAGIC_BLUE)
        player:addOutfitAddon(132, 3) 
		player:addOutfitAddon(140, 3)
        player:sendTextMessage(22, "Voce Recebeu o Addon Nobleman Full!")
    else
        player:getPosition():sendMagicEffect(CONST_ME_POFF)
      player:sendTextMessage(22, "Precisa de 5k")
    end
end

nobleman:register()
