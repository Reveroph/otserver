local ghostblade = TalkAction("!ghostbladeaddon")

function ghostblade.onSay(player, words, param)	
    if player:removeMoneyBank(25000000) then
        player:getPosition():sendMagicEffect(CONST_ME_MAGIC_BLUE)
        player:addOutfitAddon(1489, 3) 
		player:addOutfitAddon(1490, 3)
        player:sendTextMessage(22, "Voce Recebeu o ghost blade Full!")
    else
        player:getPosition():sendMagicEffect(CONST_ME_POFF)
      player:sendTextMessage(22, "Precisa de 25kk")
    end
end

ghostblade:register()
