local jester = TalkAction("!jesteraddon")

function jester.onSay(player, words, param)	
    if player:removeMoneyBank(35000) then
        player:getPosition():sendMagicEffect(CONST_ME_MAGIC_BLUE)
        player:addOutfitAddon(270, 3) 
		player:addOutfitAddon(273, 3)
        player:sendTextMessage(22, "Voce Recebeu o Addon jester Full!")
    else
        player:getPosition():sendMagicEffect(CONST_ME_POFF)
      player:sendTextMessage(22, "Precisa de 35k")
    end
end

jester:register()
