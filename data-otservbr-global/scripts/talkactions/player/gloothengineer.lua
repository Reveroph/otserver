local gloothengineer = TalkAction("!gloothengineeraddon")

function gloothengineer.onSay(player, words, param)	
    if player:removeMoneyBank(7500000) then
        player:getPosition():sendMagicEffect(CONST_ME_MAGIC_BLUE)
        player:addOutfitAddon(618, 3) 
		player:addOutfitAddon(610, 3)
        player:sendTextMessage(22, "Voce Recebeu o glooth engineer Full!")
    else
        player:getPosition():sendMagicEffect(CONST_ME_POFF)
      player:sendTextMessage(22, "Precisa de 7.5kk")
    end
end

gloothengineer:register()
