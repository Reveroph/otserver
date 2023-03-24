local gems = {
    { id = 3038 },
    { id = 3041 },
    { id = 3037 },
    { id = 32769 },
    { id = 3036 },
    { id = 3039 }
}

local especial = {
    { id = 30061 },
    { id = 30059 },
    { id = 30060 }
}

local loteriaTable = {
    { id = 39040 },
    { id = 14758 },
	{ id = 39546 },
    { id = 34109 }
}

local dailyRewards = Action()

function dailyRewards.onUse(player, item, fromPosition, target, toPosition, isHotkey)
	
	local horas = 6
	local lucro = math.ceil((player:getStorageValue(61300))*0.011)
	local lucroCastle = math.ceil((player:getStorageValue(61400))*0.019)
	local lucroImp = math.ceil((player:getStorageValue(61500))*0.027)
	local gema = gems[math.random(1, #gems)]
	local premioMaximo = loteriaTable[math.random(1, #loteriaTable)]
	local especialItem = especial[math.random(1, #especial)]
	local loteria = math.random(1,2000)

	if player:getStorageValue(18956) > os.time() then
		player:sendTextMessage(22, "Voce ja pegou sua recompensa hoje! Falta: "..(player:getStorageValue(18956))-(os.time()).." Secs pra prox!!!")
		player:getPosition():sendMagicEffect(10)
		return true
	end
	
	if player:getStorageValue(61300) < 0 then
		player:setStorageValue(61300, 0)
	end
	
	local backpack = player:addItem(2872, 1)
	
	if loteria == 999 then
		backpack:addItem(premioMaximo.id, 1)
	end
	backpack:addItem(gema.id, 1)
	backpack:addItem(especialItem.id, 1)
	backpack:addItem(36728, 1)
	backpack:addItem(16121, math.random(1,5))
	backpack:addItem(16119, math.random(1,5))
	backpack:addItem(16120, math.random(1,5))
	backpack:addItem(22721, 1 + math.ceil(player:getLevel()/100))
	backpack:addItem(22516, 1 + math.ceil(player:getLevel()/100))
	backpack:addItem(22083, math.random(1,4))
	player:setStorageValue(18956, os.time() + (60*60*horas))
	--player:setStorageValue(61300, player:getStorageValue(61300)+lucro)
	player:setBankBalance(player:getBankBalance() + lucro)
	player:setBankBalance(player:getBankBalance() + lucroCastle)
	player:setBankBalance(player:getBankBalance() + lucroImp)
	player:setBankBalance(player:getBankBalance() + ((player:getLevel())*100))
	player:setBankBalance(player:getBankBalance() + math.ceil(player:getBankBalance()*0.0031))
	player:sendTextMessage(22, "Voce pegou sua recompensa, retorne em 6 horas para a proxima!")
	player:getPosition():sendMagicEffect(15)

	return true
end

dailyRewards:aid(23778)
dailyRewards:register()
