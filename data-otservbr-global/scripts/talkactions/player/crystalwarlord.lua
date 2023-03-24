local crystalwarlord = TalkAction("!crystalwarlordaddon")

function crystalwarlord.onSay(player, words, param)	
    if player:removeMoneyBank(1000000) then
        player:getPosition():sendMagicEffect(CONST_ME_MAGIC_BLUE)
        player:addOutfitAddon(512, 3) 
		player:addOutfitAddon(513, 3)
        player:sendTextMessage(22, "Voce Recebeu o Addon crystal warlord Full!")
    else
        player:getPosition():sendMagicEffect(CONST_ME_POFF)
      player:sendTextMessage(22, "Precisa de 1kk")
    end
end

crystalwarlord:register()
