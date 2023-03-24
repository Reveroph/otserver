local conjurer = TalkAction("!conjureraddon")

function conjurer.onSay(player, words, param)	
    if player:removeMoneyBank(25000000) then
        player:getPosition():sendMagicEffect(CONST_ME_MAGIC_BLUE)
        player:addOutfitAddon(635, 3) 
		player:addOutfitAddon(634, 3)
        player:sendTextMessage(22, "Voce Recebeu o conjurer Full!")
    else
        player:getPosition():sendMagicEffect(CONST_ME_POFF)
      player:sendTextMessage(22, "Precisa de 25kk")
    end
end

conjurer:register()
