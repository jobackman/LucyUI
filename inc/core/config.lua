local AddonName, NS = ...

assert(LucyUI)

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
