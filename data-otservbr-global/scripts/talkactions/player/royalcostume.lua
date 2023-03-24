local royalcostume = TalkAction("!royalcostumeaddon")

function royalcostume.onSay(player, words, param)	
    if player:removeMoneyBank(250000000) then
        player:getPosition():sendMagicEffect(CONST_ME_MAGIC_BLUE)
        player:addOutfitAddon(1457, 3) 
		player:addOutfitAddon(1456, 3)
        player:sendTextMessage(22, "Voce Recebeu o royal costume Full!")
    else
        player:getPosition():sendMagicEffect(CONST_ME_POFF)
      player:sendTextMessage(22, "Precisa de 250kk")
    end
end

royalcostume:register()
