local _, addon = ...

--@retail@
local F = CreateFrame("Frame")
F:RegisterEvent("PLAYER_LOGIN")
F:SetScript("OnEvent", function(self, event)

  --@debug@
  addon.print("fixing unitframes")
  --@end-debug@
  -- PlayerFrame:UnregisterEvent("UNIT_COMBAT")
  PetFrame:UnregisterEvent("UNIT_COMBAT")

  local raidFrameScale = 1.25
  local castbarScale = 1

  -- CompactRaidFrameManager:SetScale(raidFrameScale);
  FocusFrameSpellBar:SetScale(castbarScale)
  TargetFrameSpellBar:SetScale(castbarScale)

end)
--@end-retail@
