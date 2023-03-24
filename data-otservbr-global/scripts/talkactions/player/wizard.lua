local wizard = TalkAction("!wizardaddon")

function wizard.onSay(player, words, param)	
    if player:removeMoneyBank(170000) then
        player:getPosition():sendMagicEffect(CONST_ME_MAGIC_BLUE)
        player:addOutfitAddon(149, 3) 
		player:addOutfitAddon(145, 3)
        player:sendTextMessage(22, "Voce Recebeu o Addon wizard Full!")
    else
        player:getPosition():sendMagicEffect(CONST_ME_POFF)
      player:sendTextMessage(22, "Precisa de 170k")
    end
end

wizard:register()
