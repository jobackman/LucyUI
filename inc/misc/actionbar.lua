local _, NS = ...

local frame = CreateFrame("Frame")
frame:RegisterEvent("PLAYER_LOGIN")
frame:SetScript("OnEvent", function(self, event)
  --@retail@
  LucyUI:Print("Hiding actionbar art background")
  MainMenuBarArtFrameBackground:Hide()
  --@end-retail@
end)
