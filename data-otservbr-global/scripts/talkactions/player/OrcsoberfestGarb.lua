local OrcsoberfestGarb = TalkAction("!orcsoberfestgarbaddon")

function OrcsoberfestGarb.onSay(player, words, param)	
    if player:removeMoneyBank(25000000) then
        player:getPosition():sendMagicEffect(CONST_ME_MAGIC_BLUE)
        player:addOutfitAddon(1252, 3) 
		player:addOutfitAddon(1251, 3)
        player:sendTextMessage(22, "Voce Recebeu o Orcsoberfest Garb Full!")
    else
        player:getPosition():sendMagicEffect(CONST_ME_POFF)
      player:sendTextMessage(22, "Precisa de 25kk")
    end
end

OrcsoberfestGarb:register()
