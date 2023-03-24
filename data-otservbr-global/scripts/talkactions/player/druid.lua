local druid = TalkAction("!druidaddon")

function druid.onSay(player, words, param)	
    if player:removeMoneyBank(1300000) then
        player:getPosition():sendMagicEffect(CONST_ME_MAGIC_BLUE)
        player:addOutfitAddon(144, 3) 
		player:addOutfitAddon(148, 3)
        player:sendTextMessage(22, "Voce Recebeu o Addon druid Full!")
    else
        player:getPosition():sendMagicEffect(CONST_ME_POFF)
      player:sendTextMessage(22, "Precisa de 1.3kk")
    end
end

druid:register()
