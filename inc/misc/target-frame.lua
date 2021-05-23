local _, NS = ...

local frame = CreateFrame("Frame")
frame:RegisterEvent("PLAYER_LOGIN")
frame:SetScript("OnEvent", function(self, event)

  -- PlayerFrame:UnregisterEvent("UNIT_COMBAT")
  PetFrame:UnregisterEvent("UNIT_COMBAT")

  local raidFrameScale = 1.25
  local castbarScale = 1

  -- CompactRaidFrameManager:SetScale(raidFrameScale);
  FocusFrameSpellBar:SetScale(castbarScale)
  TargetFrameSpellBar:SetScale(castbarScale)
end)
