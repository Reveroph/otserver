local GuidonBearer = TalkAction("!guidonbeareraddon")

function GuidonBearer.onSay(player, words, param)	
    if player:removeMoneyBank(25000000) then
        player:getPosition():sendMagicEffect(CONST_ME_MAGIC_BLUE)
        player:addOutfitAddon(1187, 3) 
		player:addOutfitAddon(1186, 3)
        player:sendTextMessage(22, "Voce Recebeu o Guidon Bearer Full!")
    else
        player:getPosition():sendMagicEffect(CONST_ME_POFF)
      player:sendTextMessage(22, "Precisa de 25kk")
    end
end

GuidonBearer:register()
