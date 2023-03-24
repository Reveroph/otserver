local demonhunter = TalkAction("!demonhunteraddon")

function demonhunter.onSay(player, words, param)	
    if player:removeMoneyBank(200000) then
        player:getPosition():sendMagicEffect(CONST_ME_MAGIC_BLUE)
        player:addOutfitAddon(288, 3) 
		player:addOutfitAddon(289, 3)
        player:sendTextMessage(22, "Voce Recebeu o Addon demonhunter Full!")
    else
        player:getPosition():sendMagicEffect(CONST_ME_POFF)
      player:sendTextMessage(22, "Precisa de 700k")
    end
end

demonhunter:register()
