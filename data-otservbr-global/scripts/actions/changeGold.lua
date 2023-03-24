function formatarNumero(valor)
  local formatado = valor
  while true do  
                                          -- O "." entre "%1" e "%2" é o separador
    formatado, n = string.gsub(formatado, "^(-?%d+)(%d%d%d)", '%1,%2') 
    if ( n ==0 ) then
      break
    end
  end
  return formatado
end


local changeGold = Action()

function changeGold.onUse(player, item, fromPosition, target, toPosition, isHotkey)

	local pCoin = 3035
	local gCoin = 3031
	local cCoin = 3043
	local Countg = 0
	local Countp = 0
	while player:getItemCount(gCoin) >= 100 do
		player:removeItem(gCoin,100)
		player:addItem(pCoin,1)
		Countg = Countg + 100
	end
	while player:getItemCount(pCoin) >= 100 do
		player:removeItem(pCoin,100)
		player:addItem(cCoin,1)
		Countp = Countp + 10000
	end
	
	if Countg == 0 and Countp == 0 then
			player:sendTextMessage(22, "Erro, nao ha dinheiro pra converter!")
			player:getPosition():sendMagicEffect(10)
		else	
			player:sendTextMessage(22, "Voce compactou: "..formatarNumero(Countg+Countp).." gps com Sucesso!")
			player:getPosition():sendMagicEffect(15)
	end
	
	return true
end

changeGold:id(12540)
changeGold:register()
