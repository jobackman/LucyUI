local addonName, NS = ...

if NS.isRetail or true then
  return
end

local function fadeIn()
  local frame = MainMenuBar
  UIFrameFadeIn(frame, 0.2, frame:GetAlpha(), 1)
end

local function fadeOut()
  local frame = MainMenuBar
  UIFrameFadeIn(frame, 0.2, frame:GetAlpha(), 0.2)
end

local hoverTriggers = {
  MainMenuBar,
  MultiBarBottomLeft,
  MultiBarBottomRight
}

for _, bar in pairs(hoverTriggers) do
  bar:SetScript("OnEnter", fadeIn)
  for _, childFrame in ipairs({bar:GetChildren()}) do
    childFrame:HookScript("OnEnter", fadeIn)
  end
end

WorldFrame:HookScript("OnEnter", fadeOut)
