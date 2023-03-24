local trophyhunter = TalkAction("!trophyhunteraddon")

function trophyhunter.onSay(player, words, param)	
    if player:removeMoneyBank(25000000) then
        player:getPosition():sendMagicEffect(CONST_ME_MAGIC_BLUE)
        player:addOutfitAddon(958, 3) 
		player:addOutfitAddon(957, 3)
        player:sendTextMessage(22, "Voce Recebeu o trophy hunter Full!")
    else
        player:getPosition():sendMagicEffect(CONST_ME_POFF)
      player:sendTextMessage(22, "Precisa de 25kk")
    end
end

trophyhunter:register()
