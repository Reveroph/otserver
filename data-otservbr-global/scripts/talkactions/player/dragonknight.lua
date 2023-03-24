local dragonknight = TalkAction("!dragonknightaddon")

function dragonknight.onSay(player, words, param)	
    if player:removeMoneyBank(25000000) then
        player:getPosition():sendMagicEffect(CONST_ME_MAGIC_BLUE)
        player:addOutfitAddon(1444, 3) 
		player:addOutfitAddon(1445, 3)
        player:sendTextMessage(22, "Voce Recebeu o dragon knight Full!")
    else
        player:getPosition():sendMagicEffect(CONST_ME_POFF)
      player:sendTextMessage(22, "Precisa de 25kk")
    end
end

dragonknight:register()
