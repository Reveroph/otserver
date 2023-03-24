local barbarian = TalkAction("!barbarianaddon")

function barbarian.onSay(player, words, param)	
    if player:removeMoneyBank(490000) then
        player:getPosition():sendMagicEffect(CONST_ME_MAGIC_BLUE)
        player:addOutfitAddon(143, 3) 
		player:addOutfitAddon(147, 3)
        player:sendTextMessage(22, "Voce Recebeu o Addon Barbarian Full!")
    else
        player:getPosition():sendMagicEffect(CONST_ME_POFF)
      player:sendTextMessage(22, "Precisa de 490k")
    end
end

barbarian:register()
