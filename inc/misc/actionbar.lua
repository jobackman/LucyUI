local _, NS = ...

local frame = CreateFrame("Frame")
frame:RegisterEvent("PLAYER_LOGIN")
frame:SetScript("OnEvent", function(self, event)
  MainMenuBarArtFrameBackground:Hide()
end)
