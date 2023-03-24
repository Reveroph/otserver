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

local infosInvestimento = Action()

function infosInvestimento.onUse(player, item, fromPosition, target, toPosition, isHotkey)
	local text = "\t::..Bank Infos..::\n\n"
	local saldo = player:getBankBalance()
	local investido = player:getStorageValue(61300)
	local lucroEstimado = math.ceil(investido*0.011)
	
	local investidoCastle = player:getStorageValue(61400)
	local lucroCastle = math.ceil(investidoCastle*0.019)
	
	local investidoImp = player:getStorageValue(61500)
	local lucroImp = math.ceil(investidoImp*0.027)

	if player:getStorageValue(61300) < 0 then
		player:setStorageValue(61300, 0)
	end	
	
	if player:getStorageValue(61400) < 0 then
		player:setStorageValue(61400, 0)
	end	
	
	if player:getStorageValue(61500) < 0 then
		player:setStorageValue(61500, 0)
	end	
	text = text.."Bonus por Lvl: "..formatarNumero(player:getLevel()*100).." Gps.\n\n"
	text = text.."Saldo: "..(formatarNumero(saldo)).." Gps\nTaxa do Banco Nacional: "..formatarNumero(math.ceil(saldo*0.0031)).." gps\nTaxa de Lucro diario: 0.31%\n\nImperio: "..formatarNumero(investidoImp).." Gps\nLucro Estimado: "..formatarNumero(lucroImp).." gps\nTaxa de lucro diario: 2.7%\n\nCastle: "..formatarNumero(investidoCastle).." gps\nLucro Estimado: "..formatarNumero(lucroCastle).." gps\nTaxa de lucro diario: 1.9%\n\nDinheiro Investido: "..formatarNumero(investido).." Gps\nLucro Estimado: "..formatarNumero(lucroEstimado).." Gps\nTaxa de lucro diario: 1.1%\n\nSalario Diario TOTAL: "..formatarNumero((math.ceil(saldo*0.0031)) + lucroEstimado + lucroCastle + lucroImp + (player:getLevel()*100)).." gps.\n\nComandos abaixo:\n!intestir <valor>\n!investircastle <valor>\n!investirimp <valor>\n!resgatar <valor>\n\nOBS investimentos no imperio e no castelo nao podem ser resgatados, investimentos no imperio sao creditados apenas 50%! opere com atencao."
	
	
	
	if player:getStorageValue(18956) > os.time() then
		text = text.."\n\nDaily Reward in: "..(player:getStorageValue(18956))-(os.time()).." Seconds."
	end
	
	if player:getStorageValue(18956) <= os.time() then
		text = text.."\n\nRECOMPENSA DIARIA DISPONIVEL!"
	end
	
	player:showTextDialog(item:getId(), text)
	return true
end
--player:getBankBalance()
--player:removeMoneyBank(250)
--targetPlayer:setBankBalance(targetPlayer:getBankBalance() + money)
infosInvestimento:id(39136)
infosInvestimento:register()
