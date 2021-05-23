local _, NS = ...

local frame = CreateFrame("Frame")
frame:RegisterEvent("PLAYER_LOGIN")
frame:SetScript("OnEvent", function(self, event)
  --@debug
  LucyUI:Print("Hiding actionbar art background")
  --@end-debug
  MainMenuBarArtFrameBackground:Hide()
end)
