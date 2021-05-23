local addonName, NS = ...

LucyUI = LibStub("AceAddon-3.0"):NewAddon(addonName, "AceConsole-3.0", "AceEvent-3.0")

AceConfig = LibStub("AceConfig-3.0")
AceDialog = LibStub("AceConfigDialog-3.0")

function LucyUI:OnInitialize(event)
  --@debug@
  self:Print("OnInitialize")
  --@end-debug@
  NS.db = LibStub("AceDB-3.0"):New(addonName .."DB", NS.defaultConfig, true)
  AceConfig:RegisterOptionsTable(addonName, NS.config, {"/lui"})
  AceDialog:AddToBlizOptions(addonName, addonName)
end

function LucyUI:OnEnable()
  --@debug@
  self:Print("OnEnable")
  ViragDevTool_AddData(NS, 'LucyUI addonTable')
  --@end-debug@
end

function LucyUI:OnDisable()
  --@debug@
  self:Print("OnDisable")
  --@end-debug@
end

-- "UIFrameFadeIn", -- [461]
-- "UIFrameFadeOut", -- [462]
