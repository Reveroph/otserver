local makeshiftwarrior = TalkAction("!makeshiftwarrioraddon")

function makeshiftwarrior.onSay(player, words, param)	
    if player:removeMoneyBank(25000000) then
        player:getPosition():sendMagicEffect(CONST_ME_MAGIC_BLUE)
        player:addOutfitAddon(1043, 3) 
		player:addOutfitAddon(1042, 3)
        player:sendTextMessage(22, "Voce Recebeu o Makeshift Warrior Full!")
    else
        player:getPosition():sendMagicEffect(CONST_ME_POFF)
      player:sendTextMessage(22, "Precisa de 25kk")
    end
end

makeshiftwarrior:register()
