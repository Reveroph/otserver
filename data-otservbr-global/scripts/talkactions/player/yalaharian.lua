local yalaharian = TalkAction("!yalaharianaddon")

function yalaharian.onSay(player, words, param)	
    if player:removeMoneyBank(900000) then
        player:getPosition():sendMagicEffect(CONST_ME_MAGIC_BLUE)
        player:addOutfitAddon(325, 3) 
		player:addOutfitAddon(324, 3)
        player:sendTextMessage(22, "Voce Recebeu o Addon yalaharian Full!")
    else
        player:getPosition():sendMagicEffect(CONST_ME_POFF)
      player:sendTextMessage(22, "Precisa de 900k")
    end
end

yalaharian:register()
