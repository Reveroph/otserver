local royalpumpkin = TalkAction("!royalpumpkinaddon")

function royalpumpkin.onSay(player, words, param)	
    if player:removeMoneyBank(25000000) then
        player:getPosition():sendMagicEffect(CONST_ME_MAGIC_BLUE)
        player:addOutfitAddon(759, 3) 
		player:addOutfitAddon(760, 3)
        player:sendTextMessage(22, "Voce Recebeu o royal pumpkin Full!")
    else
        player:getPosition():sendMagicEffect(CONST_ME_POFF)
      player:sendTextMessage(22, "Precisa de 25kk")
    end
end

royalpumpkin:register()
