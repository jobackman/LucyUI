local _, addon = ...

SlashCmdList["CHAT_AFK"] = function(msg)
	if IsActiveBattlefieldArena() then
		if CanSurrenderArena() then
			addon.print("Successfully surrendered arena.")
			SurrenderArena();
		else
			addon.print("Can't surrender arena yet.")
		end
	else
		SendChatMessage(msg, "AFK");
	end
end
