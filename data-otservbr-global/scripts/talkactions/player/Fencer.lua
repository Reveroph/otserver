local Fencer = TalkAction("!fenceraddon")

function Fencer.onSay(player, words, param)	
    if player:removeMoneyBank(25000000) then
        player:getPosition():sendMagicEffect(CONST_ME_MAGIC_BLUE)
        player:addOutfitAddon(1576, 3) 
		player:addOutfitAddon(1575, 3)
        player:sendTextMessage(22, "Voce Recebeu o Fencer Full!")
    else
        player:getPosition():sendMagicEffect(CONST_ME_POFF)
      player:sendTextMessage(22, "Precisa de 25kk")
    end
end

Fencer:register()
