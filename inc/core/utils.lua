local _, addon = ...

local util = {}
addon.util = util

function util.merge(left, right)

end

function util.splitStr (inputstr, sep)
  if sep == nil then
    sep = "%s"
  end
  local t={}
  for str in string.gmatch(inputstr, "([^"..sep.."]+)") do
    table.insert(t, str)
  end
  return t
end
