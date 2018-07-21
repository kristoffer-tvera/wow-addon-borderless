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