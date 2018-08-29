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


Borderless = {};
local _, L = ...;

-- Hide dragons on each side
function Borderless:Dragons(hide)
    if hide then
        MainMenuBarArtFrame.LeftEndCap:Hide();
        MainMenuBarArtFrame.RightEndCap:Hide();
    else 
        MainMenuBarArtFrame.LeftEndCap:Show();
        MainMenuBarArtFrame.RightEndCap:Show();
    end
end

-- Position, scale, and style for PLAYER frame
function Borderless:Player(hide)
    if hide then
        ComboPointPlayerFrame.Background:Hide();
        PlayerFrameAlternateManaBarLeftBorder:Hide();
        PlayerFrameAlternateManaBarRightBorder:Hide();
        PlayerFrameAlternateManaBarBorder:Hide();
        PlayerFrameTexture:SetAlpha(0);
    else
        ComboPointPlayerFrame.Background:Hide();
        PlayerFrameAlternateManaBarLeftBorder:Hide();
        PlayerFrameAlternateManaBarRightBorder:Hide();
        PlayerFrameAlternateManaBarBorder:Hide();
        PlayerFrameTexture:SetAlpha(0);
    end
end

-- Position, scale, and style for TARGET frame
function Borderless:Target(hide)
    if hide then
        TargetFrameTextureFrameTexture:Hide();
        TargetFrameSpellBar.Border:Hide();
    else
        TargetFrameTextureFrameTexture:Show();
        TargetFrameSpellBar.Border:Show();
    end
end

-- Position, scale, and style for FOCUS frame
function Borderless:Focus(hide)
    if hide then
        FocusFrameTextureFrameTexture:Hide();
    else
        FocusFrameTextureFrameTexture:Show();
    end
end

-- Position, scale and style the casting bar
function Borderless:Castbar(hide)
    if hide then
        CastingBarFrame.Border:Hide();
    else
        CastingBarFrame.Border:Show();
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
    else
        CharacterBag0Slot:Show();
        CharacterBag1Slot:Show();
        CharacterBag2Slot:Show();
        CharacterBag3Slot:Show();
        MainMenuBarBackpackButton:Show();
    end
end

--Remove border/styling around bag+menubar
function Borderless:Menu(hide)
    if hide then
        MicroButtonAndBagsBar.MicroBagBar:Hide();
    else
        MicroButtonAndBagsBar.MicroBagBar:Show();
    end
end

--Removes border around minimap
function Borderless:Minimap(hide)
    if hide then
        MinimapBorder:Hide();
        MinimapBorderTop:Hide();
        MiniMapWorldMapButton:Hide();
        GameTimeFrame:Hide();
    else
        MinimapBorder:Show();
        MinimapBorderTop:Show();
        MiniMapWorldMapButton:Show();
        GameTimeFrame:Show();
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
        -- Main art
        MainMenuBarArtFrameBackground:Hide();

        --ActionBarPager (toggling of different actionbars)
        ActionBarUpButton:Hide();
        ActionBarDownButton:Hide();
        MainMenuBarArtFrame.PageNumber:Hide();
        --Main Action Bar
        ActionButton1NormalTexture:SetAlpha(0);
        ActionButton2NormalTexture:SetAlpha(0);
        ActionButton3NormalTexture:SetAlpha(0);
        ActionButton4NormalTexture:SetAlpha(0);
        ActionButton5NormalTexture:SetAlpha(0);
        ActionButton6NormalTexture:SetAlpha(0);
        ActionButton7NormalTexture:SetAlpha(0);
        ActionButton8NormalTexture:SetAlpha(0);
        ActionButton9NormalTexture:SetAlpha(0);
        ActionButton10NormalTexture:SetAlpha(0);
        ActionButton11NormalTexture:SetAlpha(0);
        ActionButton12NormalTexture:SetAlpha(0);

        --MultiBarBottomLeft
        MultiBarBottomLeftButton1FloatingBG:SetAlpha(0);
        MultiBarBottomLeftButton1NormalTexture:SetAlpha(0);
        MultiBarBottomLeftButton2FloatingBG:SetAlpha(0);
        MultiBarBottomLeftButton2NormalTexture:SetAlpha(0);
        MultiBarBottomLeftButton3FloatingBG:SetAlpha(0);
        MultiBarBottomLeftButton3NormalTexture:SetAlpha(0);
        MultiBarBottomLeftButton4FloatingBG:SetAlpha(0);
        MultiBarBottomLeftButton4NormalTexture:SetAlpha(0);
        MultiBarBottomLeftButton5FloatingBG:SetAlpha(0);
        MultiBarBottomLeftButton5NormalTexture:SetAlpha(0);
        MultiBarBottomLeftButton6FloatingBG:SetAlpha(0);
        MultiBarBottomLeftButton6NormalTexture:SetAlpha(0);
        MultiBarBottomLeftButton7FloatingBG:SetAlpha(0);
        MultiBarBottomLeftButton7NormalTexture:SetAlpha(0);
        MultiBarBottomLeftButton8FloatingBG:SetAlpha(0);
        MultiBarBottomLeftButton8NormalTexture:SetAlpha(0);
        MultiBarBottomLeftButton9FloatingBG:SetAlpha(0);
        MultiBarBottomLeftButton9NormalTexture:SetAlpha(0);
        MultiBarBottomLeftButton10FloatingBG:SetAlpha(0);
        MultiBarBottomLeftButton10NormalTexture:SetAlpha(0);
        MultiBarBottomLeftButton11FloatingBG:SetAlpha(0);
        MultiBarBottomLeftButton11NormalTexture:SetAlpha(0);
        MultiBarBottomLeftButton12FloatingBG:SetAlpha(0);
        MultiBarBottomLeftButton12NormalTexture:SetAlpha(0);

        --BottomRight
        MultiBarBottomRightButton1NormalTexture:SetAlpha(0);
        MultiBarBottomRightButton2NormalTexture:SetAlpha(0);
        MultiBarBottomRightButton3NormalTexture:SetAlpha(0);
        MultiBarBottomRightButton4NormalTexture:SetAlpha(0);
        MultiBarBottomRightButton5NormalTexture:SetAlpha(0);
        MultiBarBottomRightButton6NormalTexture:SetAlpha(0);
        MultiBarBottomRightButton7FloatingBG:SetAlpha(0);
        MultiBarBottomRightButton7NormalTexture:SetAlpha(0);
        MultiBarBottomRightButton8FloatingBG:SetAlpha(0);
        MultiBarBottomRightButton8NormalTexture:SetAlpha(0);
        MultiBarBottomRightButton9FloatingBG:SetAlpha(0);
        MultiBarBottomRightButton9NormalTexture:SetAlpha(0);
        MultiBarBottomRightButton10FloatingBG:SetAlpha(0);
        MultiBarBottomRightButton10NormalTexture:SetAlpha(0);
        MultiBarBottomRightButton11FloatingBG:SetAlpha(0);
        MultiBarBottomRightButton11NormalTexture:SetAlpha(0);
        MultiBarBottomRightButton12FloatingBG:SetAlpha(0);
        MultiBarBottomRightButton12NormalTexture:SetAlpha(0);

        --Left
        MultiBarLeftButton1FloatingBG:SetAlpha(0);
        MultiBarLeftButton1NormalTexture:SetAlpha(0);
        MultiBarLeftButton2FloatingBG:SetAlpha(0);
        MultiBarLeftButton2NormalTexture:SetAlpha(0);
        MultiBarLeftButton3FloatingBG:SetAlpha(0);
        MultiBarLeftButton3NormalTexture:SetAlpha(0);
        MultiBarLeftButton4FloatingBG:SetAlpha(0);
        MultiBarLeftButton4NormalTexture:SetAlpha(0);
        MultiBarLeftButton5FloatingBG:SetAlpha(0);
        MultiBarLeftButton5NormalTexture:SetAlpha(0);
        MultiBarLeftButton6FloatingBG:SetAlpha(0);
        MultiBarLeftButton6NormalTexture:SetAlpha(0);
        MultiBarLeftButton7FloatingBG:SetAlpha(0);
        MultiBarLeftButton7NormalTexture:SetAlpha(0);
        MultiBarLeftButton8FloatingBG:SetAlpha(0);
        MultiBarLeftButton8NormalTexture:SetAlpha(0);
        MultiBarLeftButton9FloatingBG:SetAlpha(0);
        MultiBarLeftButton9NormalTexture:SetAlpha(0);
        MultiBarLeftButton10FloatingBG:SetAlpha(0);
        MultiBarLeftButton10NormalTexture:SetAlpha(0);
        MultiBarLeftButton11FloatingBG:SetAlpha(0);
        MultiBarLeftButton11NormalTexture:SetAlpha(0);
        MultiBarLeftButton12FloatingBG:SetAlpha(0);
        MultiBarLeftButton12NormalTexture:SetAlpha(0);

        --Right
        MultiBarRightButton1FloatingBG:SetAlpha(0);
        MultiBarRightButton1NormalTexture:SetAlpha(0);
        MultiBarRightButton2FloatingBG:SetAlpha(0);
        MultiBarRightButton2NormalTexture:SetAlpha(0);
        MultiBarRightButton3FloatingBG:SetAlpha(0);
        MultiBarRightButton3NormalTexture:SetAlpha(0);
        MultiBarRightButton4FloatingBG:SetAlpha(0);
        MultiBarRightButton4NormalTexture:SetAlpha(0);
        MultiBarRightButton5FloatingBG:SetAlpha(0);
        MultiBarRightButton5NormalTexture:SetAlpha(0);
        MultiBarRightButton6FloatingBG:SetAlpha(0);
        MultiBarRightButton6NormalTexture:SetAlpha(0);
        MultiBarRightButton7FloatingBG:SetAlpha(0);
        MultiBarRightButton7NormalTexture:SetAlpha(0);
        MultiBarRightButton8FloatingBG:SetAlpha(0);
        MultiBarRightButton8NormalTexture:SetAlpha(0);
        MultiBarRightButton9FloatingBG:SetAlpha(0);
        MultiBarRightButton9NormalTexture:SetAlpha(0);
        MultiBarRightButton10FloatingBG:SetAlpha(0);
        MultiBarRightButton10NormalTexture:SetAlpha(0);
        MultiBarRightButton11FloatingBG:SetAlpha(0);
        MultiBarRightButton11NormalTexture:SetAlpha(0);
        MultiBarRightButton12FloatingBG:SetAlpha(0);
        MultiBarRightButton12NormalTexture:SetAlpha(0);
    else
        -- Main art
        MainMenuBarArtFrameBackground:Show();

        --ActionBarPager (toggling of different actionbars)
        ActionBarUpButton:Show();
        ActionBarDownButton:Show();
        MainMenuBarArtFrame.PageNumber:Show();
        --Main Action Bar
        ActionButton1NormalTexture:SetAlpha(1);
        ActionButton2NormalTexture:SetAlpha(1);
        ActionButton3NormalTexture:SetAlpha(1);
        ActionButton4NormalTexture:SetAlpha(1);
        ActionButton5NormalTexture:SetAlpha(1);
        ActionButton6NormalTexture:SetAlpha(1);
        ActionButton7NormalTexture:SetAlpha(1);
        ActionButton8NormalTexture:SetAlpha(1);
        ActionButton9NormalTexture:SetAlpha(1);
        ActionButton10NormalTexture:SetAlpha(1);
        ActionButton11NormalTexture:SetAlpha(1);
        ActionButton12NormalTexture:SetAlpha(1);

        --MultiBarBottomLeft
        MultiBarBottomLeftButton1FloatingBG:SetAlpha(1);
        MultiBarBottomLeftButton1NormalTexture:SetAlpha(1);
        MultiBarBottomLeftButton2FloatingBG:SetAlpha(1);
        MultiBarBottomLeftButton2NormalTexture:SetAlpha(1);
        MultiBarBottomLeftButton3FloatingBG:SetAlpha(1);
        MultiBarBottomLeftButton3NormalTexture:SetAlpha(1);
        MultiBarBottomLeftButton4FloatingBG:SetAlpha(1);
        MultiBarBottomLeftButton4NormalTexture:SetAlpha(1);
        MultiBarBottomLeftButton5FloatingBG:SetAlpha(1);
        MultiBarBottomLeftButton5NormalTexture:SetAlpha(1);
        MultiBarBottomLeftButton6FloatingBG:SetAlpha(1);
        MultiBarBottomLeftButton6NormalTexture:SetAlpha(1);
        MultiBarBottomLeftButton7FloatingBG:SetAlpha(1);
        MultiBarBottomLeftButton7NormalTexture:SetAlpha(1);
        MultiBarBottomLeftButton8FloatingBG:SetAlpha(1);
        MultiBarBottomLeftButton8NormalTexture:SetAlpha(1);
        MultiBarBottomLeftButton9FloatingBG:SetAlpha(1);
        MultiBarBottomLeftButton9NormalTexture:SetAlpha(1);
        MultiBarBottomLeftButton10FloatingBG:SetAlpha(1);
        MultiBarBottomLeftButton10NormalTexture:SetAlpha(1);
        MultiBarBottomLeftButton11FloatingBG:SetAlpha(1);
        MultiBarBottomLeftButton11NormalTexture:SetAlpha(1);
        MultiBarBottomLeftButton12FloatingBG:SetAlpha(1);
        MultiBarBottomLeftButton12NormalTexture:SetAlpha(1);

        --BottomRight
        MultiBarBottomRightButton1NormalTexture:SetAlpha(1);
        MultiBarBottomRightButton2NormalTexture:SetAlpha(1);
        MultiBarBottomRightButton3NormalTexture:SetAlpha(1);
        MultiBarBottomRightButton4NormalTexture:SetAlpha(1);
        MultiBarBottomRightButton5NormalTexture:SetAlpha(1);
        MultiBarBottomRightButton6NormalTexture:SetAlpha(1);
        MultiBarBottomRightButton7FloatingBG:SetAlpha(1);
        MultiBarBottomRightButton7NormalTexture:SetAlpha(1);
        MultiBarBottomRightButton8FloatingBG:SetAlpha(1);
        MultiBarBottomRightButton8NormalTexture:SetAlpha(1);
        MultiBarBottomRightButton9FloatingBG:SetAlpha(1);
        MultiBarBottomRightButton9NormalTexture:SetAlpha(1);
        MultiBarBottomRightButton10FloatingBG:SetAlpha(1);
        MultiBarBottomRightButton10NormalTexture:SetAlpha(1);
        MultiBarBottomRightButton11FloatingBG:SetAlpha(1);
        MultiBarBottomRightButton11NormalTexture:SetAlpha(1);
        MultiBarBottomRightButton12FloatingBG:SetAlpha(1);
        MultiBarBottomRightButton12NormalTexture:SetAlpha(1);

        --Left
        MultiBarLeftButton1FloatingBG:SetAlpha(1);
        MultiBarLeftButton1NormalTexture:SetAlpha(1);
        MultiBarLeftButton2FloatingBG:SetAlpha(1);
        MultiBarLeftButton2NormalTexture:SetAlpha(1);
        MultiBarLeftButton3FloatingBG:SetAlpha(1);
        MultiBarLeftButton3NormalTexture:SetAlpha(1);
        MultiBarLeftButton4FloatingBG:SetAlpha(1);
        MultiBarLeftButton4NormalTexture:SetAlpha(1);
        MultiBarLeftButton5FloatingBG:SetAlpha(1);
        MultiBarLeftButton5NormalTexture:SetAlpha(1);
        MultiBarLeftButton6FloatingBG:SetAlpha(1);
        MultiBarLeftButton6NormalTexture:SetAlpha(1);
        MultiBarLeftButton7FloatingBG:SetAlpha(1);
        MultiBarLeftButton7NormalTexture:SetAlpha(1);
        MultiBarLeftButton8FloatingBG:SetAlpha(1);
        MultiBarLeftButton8NormalTexture:SetAlpha(1);
        MultiBarLeftButton9FloatingBG:SetAlpha(1);
        MultiBarLeftButton9NormalTexture:SetAlpha(1);
        MultiBarLeftButton10FloatingBG:SetAlpha(1);
        MultiBarLeftButton10NormalTexture:SetAlpha(1);
        MultiBarLeftButton11FloatingBG:SetAlpha(1);
        MultiBarLeftButton11NormalTexture:SetAlpha(1);
        MultiBarLeftButton12FloatingBG:SetAlpha(1);
        MultiBarLeftButton12NormalTexture:SetAlpha(1);

        --Right
        MultiBarRightButton1FloatingBG:SetAlpha(1);
        MultiBarRightButton1NormalTexture:SetAlpha(1);
        MultiBarRightButton2FloatingBG:SetAlpha(1);
        MultiBarRightButton2NormalTexture:SetAlpha(1);
        MultiBarRightButton3FloatingBG:SetAlpha(1);
        MultiBarRightButton3NormalTexture:SetAlpha(1);
        MultiBarRightButton4FloatingBG:SetAlpha(1);
        MultiBarRightButton4NormalTexture:SetAlpha(1);
        MultiBarRightButton5FloatingBG:SetAlpha(1);
        MultiBarRightButton5NormalTexture:SetAlpha(1);
        MultiBarRightButton6FloatingBG:SetAlpha(1);
        MultiBarRightButton6NormalTexture:SetAlpha(1);
        MultiBarRightButton7FloatingBG:SetAlpha(1);
        MultiBarRightButton7NormalTexture:SetAlpha(1);
        MultiBarRightButton8FloatingBG:SetAlpha(1);
        MultiBarRightButton8NormalTexture:SetAlpha(1);
        MultiBarRightButton9FloatingBG:SetAlpha(1);
        MultiBarRightButton9NormalTexture:SetAlpha(1);
        MultiBarRightButton10FloatingBG:SetAlpha(1);
        MultiBarRightButton10NormalTexture:SetAlpha(1);
        MultiBarRightButton11FloatingBG:SetAlpha(1);
        MultiBarRightButton11NormalTexture:SetAlpha(1);
        MultiBarRightButton12FloatingBG:SetAlpha(1);
        MultiBarRightButton12NormalTexture:SetAlpha(1);
    end

    -- c# for generating blocks above,
    -- for(var i = 1; i <= 12; i++){
        -- Console.WriteLine($"MultiBarLeftButton{i}FloatingBG:Hide();");
        -- Console.WriteLine($"MultiBarLeftButton{i}NormalTexture:Hide();");
    -- }
end

--Class icons
function Borderless:ClassIcon(hide)
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
    else
        print(L["Disabling this requires a ui reload. Try /reload, or just log out and back in again"])
    end
end

-- Borderless:Dragons(BorderlessDragons);
-- Borderless:Player(BorderlessPlayer);
-- Borderless:Target(BorderlessTarget);
-- Borderless:Focus(BorderlessFocus);
-- Borderless:Castbar(BorderlessCastbar);
-- Borderless:Bags(BorderlessBags);
-- Borderless:Menu(BorderlessMenu);
-- Borderless:Minimap(BorderlessMinimap);
-- Borderless:Objectivetracker(BorderlessObjectiveTracker);
-- Borderless:Actionbars(BorderlessActionbars);
-- Borderless:ClassIcon(BorderlessClassIcon);
