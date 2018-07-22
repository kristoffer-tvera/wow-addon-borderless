--Check+Init globals
if BorderlessDragons == nil then
    BorderlessDragons = true;
end

if BorderlessPlayer == nil then
    BorderlessPlayer = true;
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

-- Hide dragons on each side
MainMenuBarArtFrame.LeftEndCap:Hide();
MainMenuBarArtFrame.RightEndCap:Hide();

-- Position, scale, and style for PLAYER frame
PlayerFrame:ClearAllPoints();
PlayerFrame:SetPoint("TOPLEFT", 220, -400);
PlayerFrame:SetScale(1.5);
PlayerFrame:SetUserPlaced(true);
PlayerFrame:StopMovingOrSizing();
PlayerFrame:SetMovable(false);
ComboPointPlayerFrame.Background:Hide();
PlayerFrameAlternateManaBarLeftBorder:Hide();
PlayerFrameAlternateManaBarRightBorder:Hide();
PlayerFrameAlternateManaBarBorder:Hide();
PlayerFrameTexture:SetAlpha(0);

-- Position, scale, and style for TARGET frame
TargetFrame:ClearAllPoints();
TargetFrame:SetPoint("TOPLEFT", 820, -400);
TargetFrame:SetScale(1.5);
TargetFrame:SetUserPlaced(true);
TargetFrame:StopMovingOrSizing();
TargetFrame:SetMovable(false);
TargetFrameTextureFrameTexture:Hide();
TargetFrameSpellBar.Border:Hide();
TargetFrameSpellBar:SetSize(103, 15);

-- Position, scale, and style for FOCUS frame
FocusFrame:ClearAllPoints();
FocusFrame:SetPoint("TOPLEFT", 220, -200);
FocusFrame:SetScale(1.5);
FocusFrame:SetUserPlaced(true);
FocusFrame:StopMovingOrSizing();
FocusFrame:SetMovable(false);
FocusFrameTextureFrameTexture:Hide();

-- Position, scale and style the casting bar
CastingBarFrame.Border:Hide();
CastingBarFrame:SetSize(250,25);
CastingBarFrame.Text:SetPoint("TOP", CastingBarFrame, 0, -4);
CastingBarFrame:ClearAllPoints();
CastingBarFrame:SetPoint("TOP", WorldFrame, "BOTTOM", 0, 125);
CastingBarFrame.SetPoint = function() end

--Bags
CharacterBag0Slot:Hide();
CharacterBag1Slot:Hide();
CharacterBag2Slot:Hide();
CharacterBag3Slot:Hide();
MainMenuBarBackpackButton:Hide();

-- Remove border and style the actionbar
MainMenuBarArtFrameBackground:Hide();

--ActionBarPager (toggling of different actionbars)
ActionBarUpButton:Hide();
ActionBarDownButton:Hide();
MainMenuBarArtFrame.PageNumber:Hide();

--Remove border/styling around bag+menubar
MicroButtonAndBagsBar.MicroBagBar:Hide();

--Removes border around minimap
MinimapBorder:Hide();
MinimapBorderTop:Hide();
MiniMapWorldMapButton:Hide();
GameTimeFrame:Hide();

--Objective tracker
ObjectiveTrackerBlocksFrame.QuestHeader.Background:Hide();
ObjectiveTrackerBlocksFrame.AchievementHeader.Background:Hide();


--Removes the border/background of all action bar items:
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
-- MultiBarBottomRightButton1FloatingBG:Hide();
MultiBarBottomRightButton1NormalTexture:Hide();
-- MultiBarBottomRightButton2FloatingBG:Hide();
MultiBarBottomRightButton2NormalTexture:Hide();
-- MultiBarBottomRightButton3FloatingBG:Hide();
MultiBarBottomRightButton3NormalTexture:Hide();
-- MultiBarBottomRightButton4FloatingBG:Hide();
MultiBarBottomRightButton4NormalTexture:Hide();
-- MultiBarBottomRightButton5FloatingBG:Hide();
MultiBarBottomRightButton5NormalTexture:Hide();
-- MultiBarBottomRightButton6FloatingBG:Hide();
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

-- c# for generating blocks above,
-- for(var i = 1; i <= 12; i++){
	-- Console.WriteLine($"MultiBarLeftButton{i}FloatingBG:Hide();");
	-- Console.WriteLine($"MultiBarLeftButton{i}NormalTexture:Hide();");
-- }


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