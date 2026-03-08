-- Check+Init globals
if BorderlessTarget == nil then
    BorderlessTarget = true;
end

if BorderlessPlayer == nil then
    BorderlessPlayer = true;
end

if BorderlessFocus == nil then
    BorderlessFocus = true;
end

if BorderlessActionbars == nil then
    BorderlessActionbars = true;
end

if BorderlessMinimap == nil then
    BorderlessMinimap = true;
end

if BorderlessMenu == nil then
    BorderlessMenu = true;
end

if BorderlessObjectiveTracker == nil then
    BorderlessObjectiveTracker = true;
end

if BorderlessBags == nil then
    BorderlessBags = true;
end

if BorderlessCastbar == nil then
    BorderlessCastbar = true;
end

if BorderlessClassIcon == nil then
    BorderlessClassIcon = true;
end

if BorderlessStatusBar == nil then
    BorderlessStatusBar = false;
end

if BorderlessTalkingHeads == nil then
    BorderlessTalkingHeads = false;
end

Borderless = {};
local _, L = ...;

-- Status bar (xp, reputation, honor, azerite, etc)
function Borderless:StatusBar(hide, initialLoading)
    if hide then
        StatusTrackingBarManager:Hide();
    elseif not initialLoading then
        StatusTrackingBarManager:Show();
    end
end

-- Bags
function Borderless:Bags(hide)
    if hide then
        CharacterBag0Slot:Hide();
        CharacterBag1Slot:Hide();
        CharacterBag2Slot:Hide();
        CharacterBag3Slot:Hide();
        MainMenuBarBackpackButton:Hide();
        CharacterReagentBag0Slot:Hide();
        BagBarExpandToggle:Hide();
    else
        CharacterBag0Slot:Show();
        CharacterBag1Slot:Show();
        CharacterBag2Slot:Show();
        CharacterBag3Slot:Show();
        MainMenuBarBackpackButton:Show();
        CharacterReagentBag0Slot:Show();
        BagBarExpandToggle:Show();
    end
end

-- Objective tracker
function Borderless:Objectivetracker(hide)
    if hide then
        QuestObjectiveTracker.Header.Background:Hide();
        ObjectiveTrackerFrame.Header.Background:SetAlpha(0);
        AchievementObjectiveTracker.Header.Background:Hide();
    else
        QuestObjectiveTracker.Header.Background:Show();
        ObjectiveTrackerFrame.Header.Background:SetAlpha(1);
        AchievementObjectiveTracker.Header.Background:Show();
    end
end

-- Actionbars
function Borderless:Actionbars(hide)

    -- Removes the border/background of all action bar items:
    local alpha = hide and 0 or 1;
    -- Main Action Bar

    for i = 1, 12 do
        local actionButton = _G["ActionButton" .. i];
        actionButton.NormalTexture:SetAlpha(alpha);
        if actionButton.SlotBackground then
            actionButton.SlotBackground:SetAlpha(alpha);
        end

        local multiBarBottomLeftButton = _G["MultiBarBottomLeftButton" .. i];
        multiBarBottomLeftButton.NormalTexture:SetAlpha(alpha);
        if multiBarBottomLeftButton.SlotBackground then
            multiBarBottomLeftButton.SlotBackground:SetAlpha(alpha);
        end

        local multiBarBottomRightButton = _G["MultiBarBottomRightButton" .. i];
        multiBarBottomRightButton.NormalTexture:SetAlpha(alpha);
        if multiBarBottomRightButton.SlotBackground then
            multiBarBottomRightButton.SlotBackground:SetAlpha(alpha);
        end

        local multiBarRightButton = _G["MultiBarRightButton" .. i];
        multiBarRightButton.NormalTexture:SetAlpha(alpha);
        if multiBarRightButton.SlotBackground then
            multiBarRightButton.SlotBackground:SetAlpha(alpha);
        end

        local multiBarLeftButton = _G["MultiBarLeftButton" .. i];
        multiBarLeftButton.NormalTexture:SetAlpha(alpha);
        if multiBarLeftButton.SlotBackground then
            multiBarLeftButton.SlotBackground:SetAlpha(alpha);
        end

        local multiBar5Button = _G["MultiBar5Button" .. i];
        multiBar5Button.NormalTexture:SetAlpha(alpha);
        if multiBar5Button.SlotBackground then
            multiBar5Button.SlotBackground:SetAlpha(alpha);
        end

        local multiBar6Button = _G["MultiBar6Button" .. i];
        multiBar6Button.NormalTexture:SetAlpha(alpha);
        if multiBar6Button.SlotBackground then
            multiBar6Button.SlotBackground:SetAlpha(alpha);
        end

        local multiBar7Button = _G["MultiBar7Button" .. i];
        multiBar7Button.NormalTexture:SetAlpha(alpha);
        if multiBar7Button.SlotBackground then
            multiBar7Button.SlotBackground:SetAlpha(alpha);
        end
    end

end

-- Class icons
function Borderless:ClassIcon(hide, initialLoading)
    if hide then
        -- Target Frame as class icon
        hooksecurefunc("UnitFramePortrait_Update", function(self)
            if self.portrait then
                t = CLASS_ICON_TCOORDS[select(2, UnitClass(self.unit))]
                if t and UnitIsPlayer(self.unit) then
                    self.portrait:SetTexture("Interface\\TargetingFrame\\UI-Classes-Circles")
                    self.portrait:SetTexCoord(unpack(t))
                else
                    self.portrait:SetTexCoord(0, 1, 0, 1)
                end
            end
        end);
    elseif not initialLoading then
        print(L["Disabling this requires a ui reload. Try /reload, or just log out and back in again"])
    end
end

-- Talking Head Frame
function Borderless:TalkingHead()
    if BorderlessTalkingHeads then
        TalkingHeadFrame:Hide()
    end
end

Borderless.EventHookingFrame = CreateFrame("Frame", UIParent);
Borderless.EventHookingFrame:RegisterEvent("TALKINGHEAD_REQUESTED");
Borderless.EventHookingFrame:SetScript("OnEvent", function(self, event, ...)
    if event == "TALKINGHEAD_REQUESTED" then
        Borderless:TalkingHead();
    end
end);
