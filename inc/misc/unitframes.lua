local _, NS = ...

--@non-version-classic@
local frame = CreateFrame("Frame")
frame:RegisterEvent("PLAYER_LOGIN")
frame:SetScript("OnEvent", function(self, event)
  --@debug@
  LucyUI:Print("fixing unitframes")
  --@end-debug@
  -- PlayerFrame:UnregisterEvent("UNIT_COMBAT")
  PetFrame:UnregisterEvent("UNIT_COMBAT")

  local raidFrameScale = 1.25
  local castbarScale = 1

  -- CompactRaidFrameManager:SetScale(raidFrameScale);
  FocusFrameSpellBar:SetScale(castbarScale)
  TargetFrameSpellBar:SetScale(castbarScale)
end)
--@end-non-version-classic@
