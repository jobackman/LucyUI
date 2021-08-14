local AddonName, addon = ...

if not addon.isTBCC then return end

--@non-retail@
local F = CreateFrame("Frame")
F:RegisterEvent("PLAYER_LOGIN")
F:SetScript("OnEvent", function(self, event)
  MainMenuBarOverlayFrame:Hide()
end)
--@end-non-retail@
