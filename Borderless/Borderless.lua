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


Borderless = {};

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
        ActionButton1NormalTexture:Hide();
        ActionButton2NormalTexture:Hide();
        ActionButton3NormalTexture:Hide();
        ActionButton4NormalTexture:Hide();
        ActionButton5NormalTexture:Hide();
        ActionButton6NormalTexture:Hide();
        ActionButton7NormalTexture:Hide();
        ActionButton8NormalTexture:Hide();
        ActionButton9NormalTexture:Hide();
        ActionButton10NormalTexture:Hide();
        ActionButton11NormalTexture:Hide();
        ActionButton12NormalTexture:Hide();

        --MultiBarBottomLeft
        MultiBarBottomLeftButton1FloatingBG:Hide();
        MultiBarBottomLeftButton1NormalTexture:Hide();
        MultiBarBottomLeftButton2FloatingBG:Hide();
        MultiBarBottomLeftButton2NormalTexture:Hide();
        MultiBarBottomLeftButton3FloatingBG:Hide();
        MultiBarBottomLeftButton3NormalTexture:Hide();
        MultiBarBottomLeftButton4FloatingBG:Hide();
        MultiBarBottomLeftButton4NormalTexture:Hide();
        MultiBarBottomLeftButton5FloatingBG:Hide();
        MultiBarBottomLeftButton5NormalTexture:Hide();
        MultiBarBottomLeftButton6FloatingBG:Hide();
        MultiBarBottomLeftButton6NormalTexture:Hide();
        MultiBarBottomLeftButton7FloatingBG:Hide();
        MultiBarBottomLeftButton7NormalTexture:Hide();
        MultiBarBottomLeftButton8FloatingBG:Hide();
        MultiBarBottomLeftButton8NormalTexture:Hide();
        MultiBarBottomLeftButton9FloatingBG:Hide();
        MultiBarBottomLeftButton9NormalTexture:Hide();
        MultiBarBottomLeftButton10FloatingBG:Hide();
        MultiBarBottomLeftButton10NormalTexture:Hide();
        MultiBarBottomLeftButton11FloatingBG:Hide();
        MultiBarBottomLeftButton11NormalTexture:Hide();
        MultiBarBottomLeftButton12FloatingBG:Hide();
        MultiBarBottomLeftButton12NormalTexture:Hide();

        --BottomRight
        MultiBarBottomRightButton1NormalTexture:Hide();
        MultiBarBottomRightButton2NormalTexture:Hide();
        MultiBarBottomRightButton3NormalTexture:Hide();
        MultiBarBottomRightButton4NormalTexture:Hide();
        MultiBarBottomRightButton5NormalTexture:Hide();
        MultiBarBottomRightButton6NormalTexture:Hide();
        MultiBarBottomRightButton7FloatingBG:Hide();
        MultiBarBottomRightButton7NormalTexture:Hide();
        MultiBarBottomRightButton8FloatingBG:Hide();
        MultiBarBottomRightButton8NormalTexture:Hide();
        MultiBarBottomRightButton9FloatingBG:Hide();
        MultiBarBottomRightButton9NormalTexture:Hide();
        MultiBarBottomRightButton10FloatingBG:Hide();
        MultiBarBottomRightButton10NormalTexture:Hide();
        MultiBarBottomRightButton11FloatingBG:Hide();
        MultiBarBottomRightButton11NormalTexture:Hide();
        MultiBarBottomRightButton12FloatingBG:Hide();
        MultiBarBottomRightButton12NormalTexture:Hide();

        --Left
        MultiBarLeftButton1FloatingBG:Hide();
        MultiBarLeftButton1NormalTexture:Hide();
        MultiBarLeftButton2FloatingBG:Hide();
        MultiBarLeftButton2NormalTexture:Hide();
        MultiBarLeftButton3FloatingBG:Hide();
        MultiBarLeftButton3NormalTexture:Hide();
        MultiBarLeftButton4FloatingBG:Hide();
        MultiBarLeftButton4NormalTexture:Hide();
        MultiBarLeftButton5FloatingBG:Hide();
        MultiBarLeftButton5NormalTexture:Hide();
        MultiBarLeftButton6FloatingBG:Hide();
        MultiBarLeftButton6NormalTexture:Hide();
        MultiBarLeftButton7FloatingBG:Hide();
        MultiBarLeftButton7NormalTexture:Hide();
        MultiBarLeftButton8FloatingBG:Hide();
        MultiBarLeftButton8NormalTexture:Hide();
        MultiBarLeftButton9FloatingBG:Hide();
        MultiBarLeftButton9NormalTexture:Hide();
        MultiBarLeftButton10FloatingBG:Hide();
        MultiBarLeftButton10NormalTexture:Hide();
        MultiBarLeftButton11FloatingBG:Hide();
        MultiBarLeftButton11NormalTexture:Hide();
        MultiBarLeftButton12FloatingBG:Hide();
        MultiBarLeftButton12NormalTexture:Hide();

        --Right
        MultiBarRightButton1FloatingBG:Hide();
        MultiBarRightButton1NormalTexture:Hide();
        MultiBarRightButton2FloatingBG:Hide();
        MultiBarRightButton2NormalTexture:Hide();
        MultiBarRightButton3FloatingBG:Hide();
        MultiBarRightButton3NormalTexture:Hide();
        MultiBarRightButton4FloatingBG:Hide();
        MultiBarRightButton4NormalTexture:Hide();
        MultiBarRightButton5FloatingBG:Hide();
        MultiBarRightButton5NormalTexture:Hide();
        MultiBarRightButton6FloatingBG:Hide();
        MultiBarRightButton6NormalTexture:Hide();
        MultiBarRightButton7FloatingBG:Hide();
        MultiBarRightButton7NormalTexture:Hide();
        MultiBarRightButton8FloatingBG:Hide();
        MultiBarRightButton8NormalTexture:Hide();
        MultiBarRightButton9FloatingBG:Hide();
        MultiBarRightButton9NormalTexture:Hide();
        MultiBarRightButton10FloatingBG:Hide();
        MultiBarRightButton10NormalTexture:Hide();
        MultiBarRightButton11FloatingBG:Hide();
        MultiBarRightButton11NormalTexture:Hide();
        MultiBarRightButton12FloatingBG:Hide();
        MultiBarRightButton12NormalTexture:Hide();
    else
        -- Main art
        MainMenuBarArtFrameBackground:Show();

        --ActionBarPager (toggling of different actionbars)
        ActionBarUpButton:Show();
        ActionBarDownButton:Show();
        MainMenuBarArtFrame.PageNumber:Show();
        --Main Action Bar
        ActionButton1NormalTexture:Show();
        ActionButton2NormalTexture:Show();
        ActionButton3NormalTexture:Show();
        ActionButton4NormalTexture:Show();
        ActionButton5NormalTexture:Show();
        ActionButton6NormalTexture:Show();
        ActionButton7NormalTexture:Show();
        ActionButton8NormalTexture:Show();
        ActionButton9NormalTexture:Show();
        ActionButton10NormalTexture:Show();
        ActionButton11NormalTexture:Show();
        ActionButton12NormalTexture:Show();

        --MultiBarBottomLeft
        MultiBarBottomLeftButton1FloatingBG:Show();
        MultiBarBottomLeftButton1NormalTexture:Show();
        MultiBarBottomLeftButton2FloatingBG:Show();
        MultiBarBottomLeftButton2NormalTexture:Show();
        MultiBarBottomLeftButton3FloatingBG:Show();
        MultiBarBottomLeftButton3NormalTexture:Show();
        MultiBarBottomLeftButton4FloatingBG:Show();
        MultiBarBottomLeftButton4NormalTexture:Show();
        MultiBarBottomLeftButton5FloatingBG:Show();
        MultiBarBottomLeftButton5NormalTexture:Show();
        MultiBarBottomLeftButton6FloatingBG:Show();
        MultiBarBottomLeftButton6NormalTexture:Show();
        MultiBarBottomLeftButton7FloatingBG:Show();
        MultiBarBottomLeftButton7NormalTexture:Show();
        MultiBarBottomLeftButton8FloatingBG:Show();
        MultiBarBottomLeftButton8NormalTexture:Show();
        MultiBarBottomLeftButton9FloatingBG:Show();
        MultiBarBottomLeftButton9NormalTexture:Show();
        MultiBarBottomLeftButton10FloatingBG:Show();
        MultiBarBottomLeftButton10NormalTexture:Show();
        MultiBarBottomLeftButton11FloatingBG:Show();
        MultiBarBottomLeftButton11NormalTexture:Show();
        MultiBarBottomLeftButton12FloatingBG:Show();
        MultiBarBottomLeftButton12NormalTexture:Show();

        --BottomRight
        MultiBarBottomRightButton1NormalTexture:Show();
        MultiBarBottomRightButton2NormalTexture:Show();
        MultiBarBottomRightButton3NormalTexture:Show();
        MultiBarBottomRightButton4NormalTexture:Show();
        MultiBarBottomRightButton5NormalTexture:Show();
        MultiBarBottomRightButton6NormalTexture:Show();
        MultiBarBottomRightButton7FloatingBG:Show();
        MultiBarBottomRightButton7NormalTexture:Show();
        MultiBarBottomRightButton8FloatingBG:Show();
        MultiBarBottomRightButton8NormalTexture:Show();
        MultiBarBottomRightButton9FloatingBG:Show();
        MultiBarBottomRightButton9NormalTexture:Show();
        MultiBarBottomRightButton10FloatingBG:Show();
        MultiBarBottomRightButton10NormalTexture:Show();
        MultiBarBottomRightButton11FloatingBG:Show();
        MultiBarBottomRightButton11NormalTexture:Show();
        MultiBarBottomRightButton12FloatingBG:Show();
        MultiBarBottomRightButton12NormalTexture:Show();

        --Left
        MultiBarLeftButton1FloatingBG:Show();
        MultiBarLeftButton1NormalTexture:Show();
        MultiBarLeftButton2FloatingBG:Show();
        MultiBarLeftButton2NormalTexture:Show();
        MultiBarLeftButton3FloatingBG:Show();
        MultiBarLeftButton3NormalTexture:Show();
        MultiBarLeftButton4FloatingBG:Show();
        MultiBarLeftButton4NormalTexture:Show();
        MultiBarLeftButton5FloatingBG:Show();
        MultiBarLeftButton5NormalTexture:Show();
        MultiBarLeftButton6FloatingBG:Show();
        MultiBarLeftButton6NormalTexture:Show();
        MultiBarLeftButton7FloatingBG:Show();
        MultiBarLeftButton7NormalTexture:Show();
        MultiBarLeftButton8FloatingBG:Show();
        MultiBarLeftButton8NormalTexture:Show();
        MultiBarLeftButton9FloatingBG:Show();
        MultiBarLeftButton9NormalTexture:Show();
        MultiBarLeftButton10FloatingBG:Show();
        MultiBarLeftButton10NormalTexture:Show();
        MultiBarLeftButton11FloatingBG:Show();
        MultiBarLeftButton11NormalTexture:Show();
        MultiBarLeftButton12FloatingBG:Show();
        MultiBarLeftButton12NormalTexture:Show();

        --Right
        MultiBarRightButton1FloatingBG:Show();
        MultiBarRightButton1NormalTexture:Show();
        MultiBarRightButton2FloatingBG:Show();
        MultiBarRightButton2NormalTexture:Show();
        MultiBarRightButton3FloatingBG:Show();
        MultiBarRightButton3NormalTexture:Show();
        MultiBarRightButton4FloatingBG:Show();
        MultiBarRightButton4NormalTexture:Show();
        MultiBarRightButton5FloatingBG:Show();
        MultiBarRightButton5NormalTexture:Show();
        MultiBarRightButton6FloatingBG:Show();
        MultiBarRightButton6NormalTexture:Show();
        MultiBarRightButton7FloatingBG:Show();
        MultiBarRightButton7NormalTexture:Show();
        MultiBarRightButton8FloatingBG:Show();
        MultiBarRightButton8NormalTexture:Show();
        MultiBarRightButton9FloatingBG:Show();
        MultiBarRightButton9NormalTexture:Show();
        MultiBarRightButton10FloatingBG:Show();
        MultiBarRightButton10NormalTexture:Show();
        MultiBarRightButton11FloatingBG:Show();
        MultiBarRightButton11NormalTexture:Show();
        MultiBarRightButton12FloatingBG:Show();
        MultiBarRightButton12NormalTexture:Show();
    end

    -- c# for generating blocks above,
    -- for(var i = 1; i <= 12; i++){
        -- Console.WriteLine($"MultiBarLeftButton{i}FloatingBG:Hide();");
        -- Console.WriteLine($"MultiBarLeftButton{i}NormalTexture:Hide();");
    -- }
end


Borderless:Dragons(BorderlessDragons);
Borderless:Player(BorderlessPlayer);
Borderless:Target(BorderlessTarget);
Borderless:Focus(BorderlessFocus);
Borderless:Castbar(BorderlessCastbar);
Borderless:Bags(BorderlessBags);
Borderless:Menu(BorderlessMenu);
Borderless:Minimap(BorderlessMinimap);
Borderless:Objectivetracker(BorderlessObjectiveTracker);
Borderless:Actionbars(BorderlessActionbars);



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