local Arbalester = TalkAction("!arbalesteraddon")

function Arbalester.onSay(player, words, param)	
    if player:removeMoneyBank(25000000) then
        player:getPosition():sendMagicEffect(CONST_ME_MAGIC_BLUE)
        player:addOutfitAddon(1450, 3) 
		player:addOutfitAddon(1449, 3)
        player:sendTextMessage(22, "Voce Recebeu o Arbalester Full!")
    else
        player:getPosition():sendMagicEffect(CONST_ME_POFF)
      player:sendTextMessage(22, "Precisa de 25kk")
    end
end

Arbalester:register()
