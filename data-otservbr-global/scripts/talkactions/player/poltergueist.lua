local Poltergeist = TalkAction("!poltergeistaddon")

function Poltergeist.onSay(player, words, param)	
    if player:removeMoneyBank(5000000) then
        player:getPosition():sendMagicEffect(CONST_ME_MAGIC_BLUE)
        player:addOutfitAddon(1270, 3) 
		player:addOutfitAddon(1271, 3)
        player:sendTextMessage(22, "Voce Recebeu o Poltergeist Full!")
    else
        player:getPosition():sendMagicEffect(CONST_ME_POFF)
      player:sendTextMessage(22, "Precisa de 5kk")
    end
end

Poltergeist:register()
