local marrygarb = TalkAction("!marrygarbaddon")

function marrygarb.onSay(player, words, param)	
    if player:removeMoneyBank(25000000) then
        player:getPosition():sendMagicEffect(CONST_ME_MAGIC_BLUE)
        player:addOutfitAddon(1383, 3) 
		player:addOutfitAddon(1382, 3)
        player:sendTextMessage(22, "Voce Recebeu o marry garb Full!")
    else
        player:getPosition():sendMagicEffect(CONST_ME_POFF)
      player:sendTextMessage(22, "Precisa de 25kk")
    end
end

marrygarb:register()
