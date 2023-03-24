local citizenofissavi = TalkAction("!citizenofissaviaddon")

function citizenofissavi.onSay(player, words, param)	
    if player:removeMoneyBank(25000000) then
        player:getPosition():sendMagicEffect(CONST_ME_MAGIC_BLUE)
        player:addOutfitAddon(1387, 3) 
		player:addOutfitAddon(1386, 3)
        player:sendTextMessage(22, "Voce Recebeu o citizen of issavi Full!")
    else
        player:getPosition():sendMagicEffect(CONST_ME_POFF)
      player:sendTextMessage(22, "Precisa de 25kk")
    end
end

citizenofissavi:register()
