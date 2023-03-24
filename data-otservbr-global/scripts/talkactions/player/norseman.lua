local norseman = TalkAction("!norsemanaddon")

function norseman.onSay(player, words, param)	
    if player:removeMoneyBank(1000) then
        player:getPosition():sendMagicEffect(CONST_ME_MAGIC_BLUE)
        player:addOutfitAddon(252, 3) 
		player:addOutfitAddon(251, 3)
        player:sendTextMessage(22, "Voce Recebeu o Addon norseman Full!")
    else
        player:getPosition():sendMagicEffect(CONST_ME_POFF)
      player:sendTextMessage(22, "Precisa de 1k")
    end
end

norseman:register()
