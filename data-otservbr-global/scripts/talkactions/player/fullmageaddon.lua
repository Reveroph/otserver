local mage = TalkAction("!mageaddon")

function mage.onSay(player, words, param)	
	if player:removeMoneyBank(350000000) then
			player:addOutfitAddon(138, 3) 
			player:addOutfitAddon(130, 3)
			player:sendTextMessage(22, "Voce Recebeu o addon Mage FULL!")
			player:getPosition():sendMagicEffect(CONST_ME_MAGIC_GREEN)
		else
			player:sendTextMessage(22, "Precisa de 350kk")
			player:getPosition():sendMagicEffect(10)
	end

	return true
end

mage:register()
