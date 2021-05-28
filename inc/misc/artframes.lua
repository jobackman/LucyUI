local _, addon = ...

local F = CreateFrame("Frame")
F:RegisterEvent("PLAYER_LOGIN")
F:SetScript("OnEvent", function(self, event)

  local artFrames = {}

  --@retail@
  for _, frame in pairs({
    -- Background art on Main action bars
    MainMenuBarArtFrameBackground
  }) do
    table.insert(artFrames, frame)
  end
  --@end-retail@

  --@non-retail@
  -- classic/tbc artframes
  for _, frame in pairs({
    -- Main bar, gryphons, background etc.
    MainMenuMaxLevelBar0,
    MainMenuMaxLevelBar1,
    MainMenuMaxLevelBar2,
    MainMenuMaxLevelBar3,
    MainMenuBarLeftEndCap,
    MainMenuBarRightEndCap,
    MainMenuBarTexture0,
    MainMenuBarTexture1,
    MainMenuBarTexture2,
    MainMenuBarTexture3,
    -- Minimap location background, zoom icons, day/night cycle
    MinimapBorderTop,
    MinimapToggleButton,
    MinimapZoomIn,
    MinimapZoomOut,
    MiniMapWorldMapButton,
    GameTimeFrame,
  }) do
    table.insert(artFrames, frame)
  end
  --@end-non-retail@

  for _, frame in pairs(artFrames) do
    --@debug@
    addon.print("Hiding "..frame:GetName())
    --@end-debug@
    frame:Hide()
  end
end)
