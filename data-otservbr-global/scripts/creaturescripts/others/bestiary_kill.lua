local bestiaryOnKill = CreatureEvent("BestiaryOnKill")
function bestiaryOnKill.onKill(player, creature, lastHit)
	if not player:isPlayer() or not creature:isMonster() or creature:hasBeenSummoned() or creature:isPlayer() then
		return true
	end
	local x = 1
	
	if player:getStorageValue(39500) > 1 then
		x=35
	end
	

	for cid, damage in pairs(creature:getDamageMap()) do
		local participant = Player(cid)
		if participant and participant:isPlayer() then
			local bestAmount = x --(default=1) how much will increase after kill a monter in bestiary
			player:sendTextMessage(22, "Voce Ainda possui: "..(player:getStorageValue(39500)).." Cargas de Bestiary Boost")
			player:setStorageValue(39500, player:getStorageValue(39500)-1)
			for i = bestAmount, 1, -1 do 
				participant:addBestiaryKill(creature:getName())
			end
		end
	end

	return true
end
bestiaryOnKill:register()


--local bestiaryOnKill = CreatureEvent("BestiaryOnKill")
--function bestiaryOnKill.onKill(player, creature, lastHit)
--	if not player:isPlayer() or not creature:isMonster() or creature:hasBeenSummoned() or creature:isPlayer() then
--		return true
--	end

--	for cid, damage in pairs(creature:getDamageMap()) do
--		local participant = Player(cid)
--		if participant and participant:isPlayer() then
--			participant:addBestiaryKill(creature:getName())
--		end
--	  end

--	return true
--end
--bestiaryOnKill:register()
