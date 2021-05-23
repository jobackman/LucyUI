local addonName, NS = ...

NS.LucyUI = LibStub("AceAddon-3.0"):NewAddon(addonName, "AceConsole-3.0", "AceEvent-3.0")
LucyUI = NS.LucyUI

AceConfig = LibStub("AceConfig-3.0")
AceDialog = LibStub("AceConfigDialog-3.0")

function LucyUI:OnInitialize(event)
  NS.db = LibStub("AceDB-3.0"):New(addonName .."DB", NS.defaultConfig, true)
  AceConfig:RegisterOptionsTable(addonName, NS.config, {"/lui"})
  AceDialog:AddToBlizOptions(addonName, addonName)
end

function LucyUI:OnEnable()
  self:Print("OnEnable")
  --@debug
  ViragDevTool_AddData(NS, 'LucyUI addonTable')
  --@end-debug
end

function LucyUI:OnDisable()
  self:Print("OnDisable")
end

-- "UIFrameFadeIn", -- [461]
-- "UIFrameFadeOut", -- [462]
