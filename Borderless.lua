--Check+Init globals
if BorderlessDragons == nil then
    BorderlessDragons = true;
end

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

-- Hide dragons on each side
function Borderless:Dragons(hide)
    if hide then
        MainMenuBar.EndCaps.LeftEndCap:Hide();
        MainMenuBar.EndCaps.RightEndCap:Hide();
    else 
        MainMenuBar.EndCaps.LeftEndCap:Show();
        MainMenuBar.EndCaps.RightEndCap:Show();
    end
end


-- Status bar (xp, reputation, honor, azerite, etc)
function Borderless:StatusBar(hide, initialLoading)
    if hide then
        StatusTrackingBarManager:Hide();
    elseif not initialLoading then
        StatusTrackingBarManager:Show();
    end
end

--Bags
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

--Objective tracker
function Borderless:Objectivetracker(hide)
    if hide then
        ObjectiveTrackerBlocksFrame.QuestHeader.Background:Hide();
        ObjectiveTrackerBlocksFrame.AchievementHeader.Background:Hide();
    else
        ObjectiveTrackerBlocksFrame.QuestHeader.Background:Show();
        ObjectiveTrackerBlocksFrame.AchievementHeader.Background:Show();
    end
end

--Actionbars
function Borderless:Actionbars(hide)
        
    --Removes the border/background of all action bar items:
    if hide then
        --Main Action Bar
        MainMenuBar.BorderArt:SetAlpha(0);
        ActionButton1.RightDivider:SetAlpha(0);
        ActionButton2.RightDivider:SetAlpha(0);
        ActionButton3.RightDivider:SetAlpha(0);
        ActionButton4.RightDivider:SetAlpha(0);
        ActionButton5.RightDivider:SetAlpha(0);
        ActionButton6.RightDivider:SetAlpha(0);
        ActionButton7.RightDivider:SetAlpha(0);
        ActionButton8.RightDivider:SetAlpha(0);
        ActionButton9.RightDivider:SetAlpha(0);
        ActionButton10.RightDivider:SetAlpha(0);
        ActionButton11.RightDivider:SetAlpha(0);

    else
        --Main Action Bar
        MainMenuBar.BorderArt:SetAlpha(1);
        ActionButton1.RightDivider:SetAlpha(1);
        ActionButton2.RightDivider:SetAlpha(1);
        ActionButton3.RightDivider:SetAlpha(1);
        ActionButton4.RightDivider:SetAlpha(1);
        ActionButton5.RightDivider:SetAlpha(1);
        ActionButton6.RightDivider:SetAlpha(1);
        ActionButton7.RightDivider:SetAlpha(1);
        ActionButton8.RightDivider:SetAlpha(1);
        ActionButton9.RightDivider:SetAlpha(1);
        ActionButton10.RightDivider:SetAlpha(1);
        ActionButton11.RightDivider:SetAlpha(1);

    end

    -- c# for generating blocks above,
    -- for(var i = 1; i <= 12; i++){
        -- Console.WriteLine($"MultiBarLeftButton{i}FloatingBG:Hide();");
        -- Console.WriteLine($"MultiBarLeftButton{i}NormalTexture:Hide();");
    -- }
end

--Class icons
function Borderless:ClassIcon(hide, initialLoading)
    if hide then
        -- Target Frame as class icon
        hooksecurefunc("UnitFramePortrait_Update",function(self)
            if self.portrait then
            t=CLASS_ICON_TCOORDS[select(2,UnitClass(self.unit))]
            if t and UnitIsPlayer(self.unit) then
                self.portrait:SetTexture("Interface\\TargetingFrame\\UI-Classes-Circles") self.portrait:SetTexCoord(unpack(t))
            else
                self.portrait:SetTexCoord(0,1,0,1)
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
        TalkingHeadFrame_CloseImmediately();
    end
end

Borderless.EventHookingFrame = CreateFrame("Frame", UIParent);
Borderless.EventHookingFrame:RegisterEvent("TALKINGHEAD_REQUESTED");
Borderless.EventHookingFrame:SetScript("OnEvent", function(self, event, ...)
    if event == "TALKINGHEAD_REQUESTED" then
        Borderless:TalkingHead();
    end
end);
