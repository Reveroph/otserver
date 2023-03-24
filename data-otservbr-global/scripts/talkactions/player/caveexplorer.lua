local caveexplorer = TalkAction("!caveexploreraddon")

function caveexplorer.onSay(player, words, param)	
    if player:removeMoneyBank(8000000) then
        player:getPosition():sendMagicEffect(CONST_ME_MAGIC_BLUE)
        player:addOutfitAddon(575, 3) 
		player:addOutfitAddon(574, 3)
        player:sendTextMessage(22, "Voce Recebeu o cave explorer Full!")
    else
        player:getPosition():sendMagicEffect(CONST_ME_POFF)
      player:sendTextMessage(22, "Precisa de 8kk")
    end
end

caveexplorer:register()
