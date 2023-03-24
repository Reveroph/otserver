local ceremonialgarb = TalkAction("!ceremonialgarbaddon")

function ceremonialgarb.onSay(player, words, param)	
    if player:removeMoneyBank(25000000) then
        player:getPosition():sendMagicEffect(CONST_ME_MAGIC_BLUE)
        player:addOutfitAddon(695, 3) 
		player:addOutfitAddon(694, 3)
        player:sendTextMessage(22, "Voce Recebeu o ceremonial garb Full!")
    else
        player:getPosition():sendMagicEffect(CONST_ME_POFF)
      player:sendTextMessage(22, "Precisa de 25kk")
    end
end

ceremonialgarb:register()
