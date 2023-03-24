local pumpkinmummy = TalkAction("!pumpkinmummyaddon")

function pumpkinmummy.onSay(player, words, param)	
    if player:removeMoneyBank(25000000) then
        player:getPosition():sendMagicEffect(CONST_ME_MAGIC_BLUE)
        player:addOutfitAddon(1128, 3) 
		player:addOutfitAddon(1127, 3)
        player:sendTextMessage(22, "Voce Recebeu o pumpkin mummy Full!")
    else
        player:getPosition():sendMagicEffect(CONST_ME_POFF)
      player:sendTextMessage(22, "Precisa de 25kk")
    end
end

pumpkinmummy:register()
