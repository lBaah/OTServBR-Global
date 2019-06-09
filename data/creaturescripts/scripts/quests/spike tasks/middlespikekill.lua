local range = { -- Only the Crystalcrushers killed on this area count
	from = Position(32100, 32470, 11),
	to = Position(32380, 32725, 12)
}

function onKill(creature, target)
	if not isInArray({-1, 7}, creature:getStorageValue(SPIKE_MIDDLE_KILL_MAIN)) then
		if creature:getPosition():isInRange(range.from, range.to) then
			if target:isMonster() and (target:getMaster() == nil) and (target:getName() == "Crystalcrusher") then
				local sum = creature:getStorageValue(SPIKE_MIDDLE_KILL_MAIN) + 1
				creature:setStorageValue(SPIKE_MIDDLE_KILL_MAIN, sum)
				creature:sendTextMessage(MESSAGE_EVENT_ADVANCE, 'You have slayed ' .. sum .. ' out of 7 crystalcrushers.')
				if sum == 7 then
					creature:sendTextMessage(MESSAGE_INFO_DESCR, "Report the task to Gnombold.")
				end
			end
		end
	end
end
