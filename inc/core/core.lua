local addonName, addon = ...

LucyUI = addon

addon.isRetail = WOW_PROJECT_ID == WOW_PROJECT_MAINLINE
addon.isClassic = WOW_PROJECT_ID == WOW_PROJECT_CLASSIC
addon.isTBCC = WOW_PROJECT_ID == WOW_PROJECT_BURNING_CRUSADE_CLASSIC

--@debug@
addon.isDebug = true
--@end-debug@

local orange = "|CFFFE8A0E"
local blue = "|cff009cffUI"

function addon.print(msg)
  print(orange..'Lucy|r'..blue..'|r: '..msg)
end

function addon.vdt(...)
  if addon.isDebug then
    ViragDevTool_AddData(...)
  end
end

local function OnLoad()
  addon.print("/lui for no options!")
  addon.vdt(addon, "LucyUI")
end

local frame = CreateFrame("Frame")
frame:RegisterEvent("PLAYER_LOGIN")
frame:SetScript("OnEvent", OnLoad)
