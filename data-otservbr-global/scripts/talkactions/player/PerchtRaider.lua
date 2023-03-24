local PerchtRaider = TalkAction("!perchtraideraddon")

function PerchtRaider.onSay(player, words, param)	
    if player:removeMoneyBank(25000000) then
        player:getPosition():sendMagicEffect(CONST_ME_MAGIC_BLUE)
        player:addOutfitAddon(1162, 3) 
		player:addOutfitAddon(1161, 3)
        player:sendTextMessage(22, "Voce Recebeu o Percht Raider Full!")
    else
        player:getPosition():sendMagicEffect(CONST_ME_POFF)
      player:sendTextMessage(22, "Precisa de 25kk")
    end
end

PerchtRaider:register()
