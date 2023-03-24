local seadog = TalkAction("!seadogaddon")

function seadog.onSay(player, words, param)	
    if player:removeMoneyBank(25000000) then
        player:getPosition():sendMagicEffect(CONST_ME_MAGIC_BLUE)
        player:addOutfitAddon(749, 3) 
		player:addOutfitAddon(750, 3)
        player:sendTextMessage(22, "Voce Recebeu o sea dog Full!")
    else
        player:getPosition():sendMagicEffect(CONST_ME_POFF)
      player:sendTextMessage(22, "Precisa de 25kk")
    end
end

seadog:register()
