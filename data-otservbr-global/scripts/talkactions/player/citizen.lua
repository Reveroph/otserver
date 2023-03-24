local citizen = TalkAction("!citizenaddon")

function citizen.onSay(player, words, param)	
    if player:removeMoneyBank(85000) then
        player:getPosition():sendMagicEffect(CONST_ME_MAGIC_BLUE)
        player:addOutfitAddon(128, 3) 
		player:addOutfitAddon(136, 3)
        player:sendTextMessage(22, "Voce Recebeu o Addon Citizen Full!")
    else
        player:getPosition():sendMagicEffect(CONST_ME_POFF)
      player:sendTextMessage(22, "Precisa de 85k")
    end
end

citizen:register()
