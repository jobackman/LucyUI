local _, addon = ...

local function lPrint(msg)
	print("|cFFDC143CLucyUI:|r"..msg)
end

SlashCmdList["CHAT_AFK"] = function(msg)
	if IsActiveBattlefieldArena() then
		if CanSurrenderArena() then
			lPrint("Successfully surrendered arena.")
			SurrenderArena();
		else
			lPrint("Can't surrender arena yet.")
		end
	else
		SendChatMessage(msg, "AFK");
	end
end
