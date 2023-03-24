local Trailblazer = TalkAction("!trailblazeraddon")

function Trailblazer.onSay(player, words, param)	
    if player:removeMoneyBank(25000000) then
        player:getPosition():sendMagicEffect(CONST_ME_MAGIC_BLUE)
        player:addOutfitAddon(1292, 3) 
		player:addOutfitAddon(1293, 3)
        player:sendTextMessage(22, "Voce Recebeu o Trailblazer Full!")
    else
        player:getPosition():sendMagicEffect(CONST_ME_POFF)
      player:sendTextMessage(22, "Precisa de 25kk")
    end
end

Trailblazer:register()
