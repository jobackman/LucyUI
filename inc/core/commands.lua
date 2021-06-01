local _, addon = ...

local function nextArg(t)
  local first = t[1]
  table.remove(t, 1)
  return first
end

local commands = {
  test = function(args)
    addon.vdt(args, "Remaining args")
  end
}

SLASH_LUI1 = "/lui"
SLASH_LUI2 = "/LucyUI"
SlashCmdList['LUI'] = function(str)
  addon.print("slash commands: "..str)
  local args = addon.util.splitStr(str)
  addon.vdt(args)

  local cmd = nextArg(args)

  if commands[cmd] ~= nil then
    commands[cmd](args)
  else
    addon.print("Unknown option "..cmd)
  end
end
