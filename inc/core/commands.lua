local _, addon = ...

SLASH_LUI1 = "/lui"
SLASH_LUI2 = "/LucyUI"
SlashCmdList['LUI'] = function(args)
  addon.print("It works!!")
  addon.vdt(args)
end
