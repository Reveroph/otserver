local wayfarer = TalkAction("!wayfareraddon")

function wayfarer.onSay(player, words, param)	
    if player:removeMoneyBank(485000) then
        player:getPosition():sendMagicEffect(CONST_ME_MAGIC_BLUE)
        player:addOutfitAddon(367, 3) 
		player:addOutfitAddon(366, 3)
        player:sendTextMessage(22, "Voce Recebeu o Addon wayfarer Full!")
    else
        player:getPosition():sendMagicEffect(CONST_ME_POFF)
      player:sendTextMessage(22, "Precisa de 485k")
    end
end

wayfarer:register()
