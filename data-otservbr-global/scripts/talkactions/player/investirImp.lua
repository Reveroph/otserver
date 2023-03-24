function formatarNumero(valor)
  local formatado = valor
  while true do  
                                          -- O "." entre "%1" e "%2" é o separador
    formatado, n = string.gsub(formatado, "^(-?%d+)(%d%d%d)", '%1.%2') 
    if ( n ==0 ) then
      break
    end
  end
  return formatado
end

local investirImp = TalkAction("!investirimp")

function investirImp.onSay(player, words, param)
	if tonumber(param) == nil then
		player:sendTextMessage(22, "Valor invalido")
		return true
	end
	
	if tonumber(param) < 0 then
		player:sendTextMessage(22, "Apenas numeros positivos sao permitidos!")
		return true
	end
	
	if (player:getStorageValue(61500)+(tonumber(param))) > 2000000000 then
		player:sendTextMessage(22, "Voce Estorou o limite permitido de 2kkk Operacao negada!")
		return true
	end

	if player:getStorageValue(61500) < 0 then
		player:setStorageValue(61500, 0)
	end
	
	if tonumber(param) <= player:getBankBalance() then
			player:removeMoneyBank(tonumber(param))
			player:setStorageValue(61500, player:getStorageValue(61500)+((math.ceil(tonumber(param)))/2))
			player:sendTextMessage(22, "Voce investiu: "..formatarNumero(tonumber(param)).." Gps no Imperio com sucesso!")
		else
			player:sendTextMessage(22, "Algo deu ERRADO!")
	end
	
	
	

	return true
end

investirImp:separator(" ")
investirImp:register()
