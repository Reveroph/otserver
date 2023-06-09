local expscroll = Action()

function expscroll.onUse(cid, item, fromPosition, itemEx, toPosition)
    local player = Player(cid)
    local remainingBoost = player:getExpBoostStamina()
    local currentExpBoostTime = player:getExpBoostStamina()
	local baseRate = player:getFinalBaseRateExperience()
 --   local expBoostCount = player:getStorageValue(GameStore.Storages.expBoostCount)

 --   if expBoostCount >= 3 then -- Xp boost can only be used 3 times a day
  --      player:say('You have reached the limit for today, try again after Server Save.', TALKTYPE_MONSTER_SAY)
 --       return true
 --   end
    
    if (remainingBoost > 0) then -- If player still has an active xp boost, don't let him use another one
        player:say('You already have an active XP boost.', TALKTYPE_MONSTER_SAY)
		player:getPosition():sendMagicEffect(2)
        return true
    end
    
    player:setStoreXpBoost(baseRate*100)
    player:setExpBoostStamina(currentExpBoostTime + 3600)
    Item(item.uid):remove(1)
    player:say('Your hour of 100% bonus XP has started!', TALKTYPE_MONSTER_SAY)
	player:getPosition():sendMagicEffect(15)
    return true
end

expscroll:id(36731)
expscroll:register()
