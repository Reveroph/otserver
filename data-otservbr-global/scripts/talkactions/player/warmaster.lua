local warmaster = TalkAction("!warmasteraddon")

function warmaster.onSay(player, words, param)	
    if player:removeMoneyBank(615000) then
        player:getPosition():sendMagicEffect(CONST_ME_MAGIC_BLUE)
        player:addOutfitAddon(335, 3) 
		player:addOutfitAddon(336, 3)
        player:sendTextMessage(22, "Voce Recebeu o Addon warmaster Full!")
    else
        player:getPosition():sendMagicEffect(CONST_ME_POFF)
      player:sendTextMessage(22, "Precisa de 615k")
    end
end

warmaster:register()
