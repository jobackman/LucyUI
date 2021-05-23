local _, NS = ...

local SUIMicroMenu = CreateFrame("Frame")
SUIMicroMenu:RegisterEvent("PLAYER_LOGIN")
SUIMicroMenu:RegisterEvent("UNIT_EXITED_VEHICLE")
SUIMicroMenu:RegisterEvent("UNIT_ENTERED_VEHICLE")
SUIMicroMenu:RegisterEvent("PLAYER_ENTERING_WORLD")
SUIMicroMenu:SetScript("OnEvent", function(self)
  -- Move the MicroButtonMenu to the center top instead
  -- and hide all the bag buttons

    if not SUIDB.A_INVISBAGS == true then return end

    local scale = 0.6
    local padding = 5
    local width, height = CharacterMicroButton:GetSize()

    local len = nil
    for idx, _ in ipairs(MICRO_BUTTONS) do len = idx end

    local CF=CreateFrame("Frame")
    CF:ClearAllPoints()
    CF:SetPoint("TOP", UIParent)
    CF:SetSize(width * len * scale + padding * 2, height * scale + padding)

    -- MainMenuBarBackpackButton:Hide()
    -- CharacterBag0Slot:Hide()
    -- CharacterBag1Slot:Hide()
    -- CharacterBag2Slot:Hide()
    -- CharacterBag3Slot:Hide()
    -- texture:Hide()

    local prevBtn = nil
    for _, v in ipairs(MICRO_BUTTONS) do v = _G[v]
      v:ClearAllPoints()
      v:SetScale(scale)

      if prevBtn then
        v:SetPoint("LEFT", prevBtn, "RIGHT", 0, 0)
      end

      v:SetParent(CF)
      prevBtn = v
    end

    CharacterMicroButton:SetPoint("TOPLEFT", CF, "TOPLEFT", padding, -padding)
end)
