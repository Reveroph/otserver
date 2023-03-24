local beastmaster = TalkAction("!beastmasteraddon")

function beastmaster.onSay(player, words, param)	
    if player:removeMoneyBank(25000000) then
        player:getPosition():sendMagicEffect(CONST_ME_MAGIC_BLUE)
        player:addOutfitAddon(637, 3) 
		player:addOutfitAddon(636, 3)
        player:sendTextMessage(22, "Voce Recebeu o beastmaster Full!")
    else
        player:getPosition():sendMagicEffect(CONST_ME_POFF)
      player:sendTextMessage(22, "Precisa de 25kk")
    end
end

beastmaster:register()
