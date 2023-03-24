local arenachampion = TalkAction("!arenachampionaddon")

function arenachampion.onSay(player, words, param)	
    if player:removeMoneyBank(25000000) then
        player:getPosition():sendMagicEffect(CONST_ME_MAGIC_BLUE)
        player:addOutfitAddon(884, 3) 
		player:addOutfitAddon(885, 3)
        player:sendTextMessage(22, "Voce Recebeu o arena champion Full!")
    else
        player:getPosition():sendMagicEffect(CONST_ME_POFF)
      player:sendTextMessage(22, "Precisa de 25kk")
    end
end

arenachampion:register()
