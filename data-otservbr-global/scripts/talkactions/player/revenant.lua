local Revenant = TalkAction("!revenantaddon")

function Revenant.onSay(player, words, param)	
    if player:removeMoneyBank(250000000) then
        player:getPosition():sendMagicEffect(CONST_ME_MAGIC_BLUE)
        player:addOutfitAddon(1323, 3) 
		player:addOutfitAddon(1322, 3)
        player:sendTextMessage(22, "Voce Recebeu o Revenant Full!")
    else
        player:getPosition():sendMagicEffect(CONST_ME_POFF)
      player:sendTextMessage(22, "Precisa de 250kk")
    end
end

Revenant:register()
