local evoker = TalkAction("!evokeraddon")

function evoker.onSay(player, words, param)	
    if player:removeMoneyBank(25000000) then
        player:getPosition():sendMagicEffect(CONST_ME_MAGIC_BLUE)
        player:addOutfitAddon(724, 3) 
		player:addOutfitAddon(725, 3)
        player:sendTextMessage(22, "Voce Recebeu o evoker Full!")
    else
        player:getPosition():sendMagicEffect(CONST_ME_POFF)
      player:sendTextMessage(22, "Precisa de 25kk")
    end
end

evoker:register()
