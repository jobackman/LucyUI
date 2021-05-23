local AddonName, NS = ...

assert(LucyUI)

NS.isRetail = WOW_PROJECT_ID == WOW_PROJECT_MAINLINE
NS.isClassic = WOW_PROJECT_ID == WOW_PROJECT_CLASSIC
NS.isTBCC = WOW_PROJECT_ID == WOW_PROJECT_BURNING_CRUSADE_CLASSIC

--@debug@
LucyUI:Print("Setting up config")
--@end-debug@

NS.defaultConfig = {
  profile = {
    enable = true,
    misc = {
      lossOfControl = true,
      suiMicroMenuFix = true,
    }
  }
}

NS.config = {
  type = "group",
  args = {
    enable = {
      name = "Enable",
      desc = "Enables / disables the addon",
      type = "toggle",
      set = function(info,val) NS.db.global.enable = val  end,
      get = function(info) return NS.db.global.enable end
    }
  }
}
