local retro = TalkAction("!retroaddon")

function retro.onSay(player, words, param)	
    if player:removeMoneyBank(100000000) then
        player:getPosition():sendMagicEffect(CONST_ME_MAGIC_BLUE)
        player:addOutfitAddon(962, 3) 
		player:addOutfitAddon(964, 3)
        player:addOutfitAddon(966, 3) 
		player:addOutfitAddon(968, 3)
		player:addOutfitAddon(970, 3) 
		player:addOutfitAddon(972, 3)
		player:addOutfitAddon(974, 3) 
		player:addOutfitAddon(963, 3)
		player:addOutfitAddon(965, 3) 
		player:addOutfitAddon(967, 3)
		player:addOutfitAddon(969, 3) 
		player:addOutfitAddon(971, 3)
		player:addOutfitAddon(973, 3) 
		player:addOutfitAddon(975, 3)
        player:sendTextMessage(22, "Voce Recebeu o retro pack addons!")
    else
        player:getPosition():sendMagicEffect(CONST_ME_POFF)
      player:sendTextMessage(22, "Precisa de 100kk")
    end
end

retro:register()
