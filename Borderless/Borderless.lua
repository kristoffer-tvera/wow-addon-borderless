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

--Bags
CharacterBag0Slot:Hide();
CharacterBag1Slot:Hide();
CharacterBag2Slot:Hide();
CharacterBag3Slot:Hide();
MainMenuBarBackpackButton:Hide();