-- Check+Init globals (defaults)
local savedVariableDefaults = {
    BorderlessTarget = true,
    BorderlessPlayer = true,
    BorderlessFocus = true,
    BorderlessActionbars = true,
    BorderlessMinimap = true,
    BorderlessMenu = true,
    BorderlessObjectiveTracker = true,
    BorderlessBags = true,
    BorderlessCastbar = true,
    BorderlessClassIcon = true,
    BorderlessStatusBar = false,
    BorderlessTalkingHeads = false
};

for name, default in pairs(savedVariableDefaults) do
    if _G[name] == nil then
        _G[name] = default;
    end
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
local bagFrames = {"CharacterBag0Slot", "CharacterBag1Slot", "CharacterBag2Slot", "CharacterBag3Slot",
                   "MainMenuBarBackpackButton", "CharacterReagentBag0Slot", "BagBarExpandToggle"};

function Borderless:Bags(hide)
    for _, name in ipairs(bagFrames) do
        local frame = _G[name];
        if frame then
            if hide then
                frame:Hide()
            else
                frame:Show()
            end
        end
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
local actionBarPrefixes = {"ActionButton", "MultiBarBottomLeftButton", "MultiBarBottomRightButton",
                           "MultiBarRightButton", "MultiBarLeftButton", "MultiBar5Button", "MultiBar6Button",
                           "MultiBar7Button"};

function Borderless:Actionbars(hide)
    -- Removes the border/background of all action bar items:
    local alpha = hide and 0 or 1;

    for _, prefix in ipairs(actionBarPrefixes) do
        for i = 1, 12 do
            local button = _G[prefix .. i];
            if button then
                if button.NormalTexture then
                    button.NormalTexture:SetAlpha(alpha);
                end
                if button.SlotBackground then
                    button.SlotBackground:SetAlpha(alpha);
                end
            end
        end
    end
end

-- Class icons
function Borderless:ClassIcon(hide, initialLoading)
    if hide then
        -- Target Frame as class icon
        hooksecurefunc("UnitFramePortrait_Update", function(self)
            if self.portrait then
                local t = CLASS_ICON_TCOORDS[select(2, UnitClass(self.unit))]
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
