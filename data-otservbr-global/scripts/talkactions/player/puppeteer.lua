local puppeteer = TalkAction("!puppeteeraddon")

function puppeteer.onSay(player, words, param)	
    if player:removeMoneyBank(25000000) then
        player:getPosition():sendMagicEffect(CONST_ME_MAGIC_BLUE)
        player:addOutfitAddon(696, 3) 
		player:addOutfitAddon(697, 3)
        player:sendTextMessage(22, "Voce Recebeu o puppeteer Full!")
    else
        player:getPosition():sendMagicEffect(CONST_ME_POFF)
      player:sendTextMessage(22, "Precisa de 25kk")
    end
end

puppeteer:register()
