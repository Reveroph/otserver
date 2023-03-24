local OwlKeeper = TalkAction("!owlkeeperaddon")

function OwlKeeper.onSay(player, words, param)	
    if player:removeMoneyBank(25000000) then
        player:getPosition():sendMagicEffect(CONST_ME_MAGIC_BLUE)
        player:addOutfitAddon(1173, 3) 
		player:addOutfitAddon(1174, 3)
        player:sendTextMessage(22, "Voce Recebeu o Owl Keeper Full!")
    else
        player:getPosition():sendMagicEffect(CONST_ME_POFF)
      player:sendTextMessage(22, "Precisa de 25kk")
    end
end

OwlKeeper:register()
