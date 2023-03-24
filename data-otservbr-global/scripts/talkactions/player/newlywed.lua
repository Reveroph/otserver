local newlywed = TalkAction("!newlywedaddon")

function newlywed.onSay(player, words, param)	
    if player:removeMoneyBank(60000) then
        player:getPosition():sendMagicEffect(CONST_ME_MAGIC_BLUE)
        player:addOutfitAddon(328, 3) 
		player:addOutfitAddon(329, 3)
        player:sendTextMessage(22, "Voce Recebeu o Addon newlywed Full!")
    else
        player:getPosition():sendMagicEffect(CONST_ME_POFF)
      player:sendTextMessage(22, "Precisa de 60k")
    end
end

newlywed:register()
