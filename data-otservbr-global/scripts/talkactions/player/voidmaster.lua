local voidmaster = TalkAction("!voidmasteraddon")

function voidmaster.onSay(player, words, param)	
    if player:removeMoneyBank(25000000) then
        player:getPosition():sendMagicEffect(CONST_ME_MAGIC_BLUE)
        player:addOutfitAddon(1202, 3) 
		player:addOutfitAddon(1203, 3)
        player:sendTextMessage(22, "Voce Recebeu o void master Full!")
    else
        player:getPosition():sendMagicEffect(CONST_ME_POFF)
      player:sendTextMessage(22, "Precisa de 25kk")
    end
end

voidmaster:register()
