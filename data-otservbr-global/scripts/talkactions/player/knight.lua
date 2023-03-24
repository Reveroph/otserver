local knight = TalkAction("!knightaddon")

function knight.onSay(player, words, param)	
    if player:removeMoneyBank(235000) then
        player:getPosition():sendMagicEffect(CONST_ME_MAGIC_BLUE)
        player:addOutfitAddon(139, 3) 
		player:addOutfitAddon(131, 3)
        player:sendTextMessage(22, "Voce Recebeu o Addon Knight Full!")
    else
        player:getPosition():sendMagicEffect(CONST_ME_POFF)
      player:sendTextMessage(22, "Precisa de 235k")
    end
end

knight:register()
