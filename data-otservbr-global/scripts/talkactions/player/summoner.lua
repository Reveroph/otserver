local summoner = TalkAction("!summoneraddon")

function summoner.onSay(player, words, param)	
    if player:removeMoneyBank(650000) then
        player:getPosition():sendMagicEffect(CONST_ME_MAGIC_BLUE)
        player:addOutfitAddon(141, 3) 
		player:addOutfitAddon(133, 3)
        player:sendTextMessage(22, "Voce Recebeu o Addon Summoner Full!")
    else
        player:getPosition():sendMagicEffect(CONST_ME_POFF)
      player:sendTextMessage(22, "Precisa de 650k")
    end
end

summoner:register()
