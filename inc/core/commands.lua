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
  local args = addon.util.splitStr(str)
  addon.vdt(args, 'Slash args')

  local cmd = nextArg(args, 'cmds')

  if commands[cmd] then
    commands[cmd](args)
  else
    addon.print("Available options:")
    for k, v in pairs(commands) do
      addon.print(SLASH_LUI1.." "..k)
    end
  end
end
