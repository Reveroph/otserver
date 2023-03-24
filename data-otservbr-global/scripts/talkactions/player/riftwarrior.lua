local riftwarrior = TalkAction("!riftwarrioraddon")

function riftwarrior.onSay(player, words, param)	
    if player:removeMoneyBank(18000000) then
        player:getPosition():sendMagicEffect(CONST_ME_MAGIC_BLUE)
        player:addOutfitAddon(845, 3) 
		player:addOutfitAddon(846, 3)
        player:sendTextMessage(22, "Voce Recebeu o rift warrior Full!")
    else
        player:getPosition():sendMagicEffect(CONST_ME_POFF)
      player:sendTextMessage(22, "Precisa de 18kk")
    end
end

riftwarrior:register()
