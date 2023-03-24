local BreezyGarb = TalkAction("!breezygarbaddon")

function BreezyGarb.onSay(player, words, param)	
    if player:removeMoneyBank(25000000) then
        player:getPosition():sendMagicEffect(CONST_ME_MAGIC_BLUE)
        player:addOutfitAddon(1245, 3) 
		player:addOutfitAddon(1246, 3)
        player:sendTextMessage(22, "Voce Recebeu o Breezy Garb Full!")
    else
        player:getPosition():sendMagicEffect(CONST_ME_POFF)
      player:sendTextMessage(22, "Precisa de 25kk")
    end
end

BreezyGarb:register()
