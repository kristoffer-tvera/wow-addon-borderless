Borderless_config = {};
Borderless_config.panel = CreateFrame( "Frame", "BorderlessConfigFrame", UIParent );
-- Register in the Interface Addon Options GUI
-- Set the name for the Category for the Options Panel
Borderless_config.panel.name = "Borderless";
-- Add the panel to the Interface Options
InterfaceOptions_AddCategory(Borderless_config.panel);

-- myCheckButton = CreateFrame("CheckButton", "myCheckButton_GlobalName", Borderless.panel, "ChatConfigCheckButtonTemplate");
-- myCheckButton:SetPoint("TOPLEFT", 0, 0);
-- myCheckButton_GlobalNameText:SetText("CheckBox Name");
-- myCheckButton.tooltip = "This is where you place MouseOver Text.";
-- myCheckButton:SetScript("OnClick", 
--   function()
--     print( myCheckButton:GetChecked() );
--   end
-- );

local unique = 0;
function createCheckbutton(parent, displayname, tooltip)
    local y_increment = -20;
	
	
	local checkbutton = CreateFrame("CheckButton", "Borderless_config_checkbox_" .. unique, parent, "ChatConfigCheckButtonTemplate");
    checkbutton:SetPoint("TOPLEFT", 0, (y_increment * unique));
    -- checkbutton_GlobalNameText:SetText(displayname);
    getglobal(checkbutton:GetName() .. 'Text'):SetText(displayname);
    checkbutton.tooltip = tooltip;
    
    unique = unique + 1;
	return checkbutton;
end

Borderless_config_dragonsCheckbox = createCheckbutton(Borderless_config.panel, "No dragons/lions", "Remove the dragons around the actionbars");
Borderless_config_dragonsCheckbox:SetScript("OnClick", 
    function()
        BorderlessDragons = Borderless_config_dragonsCheckbox:GetChecked();
    end
);

Borderless_config_actionBarsCheckbox = createCheckbutton(Borderless_config.panel, "No borders around actionbars", "Removes the borders around all the actionbar items");
Borderless_config_actionBarsCheckbox:SetScript("OnClick", 
    function()
        BorderlessActionbars = Borderless_config_actionBarsCheckbox:GetChecked();
    end
);
Borderless_config_miniMapCheckbox = createCheckbutton(Borderless_config.panel, "No borders around minimap", "Removes the borders around the minimap");
Borderless_config_miniMapCheckbox:SetScript("OnClick", 
    function()
        BorderlessMinimap = Borderless_config_miniMapCheckbox:GetChecked();
    end
);
Borderless_config_playerCheckbox = createCheckbutton(Borderless_config.panel, "No borders around the playerframe", "Removes the border around the playerframe");
Borderless_config_playerCheckbox:SetScript("OnClick", 
    function()
        BorderlessPlayer = Borderless_config_playerCheckbox:GetChecked();
    end
);
Borderless_config_targetCheckbox = createCheckbutton(Borderless_config.panel, "No borders around the targetframe", "Removes the border around the targetframe");
Borderless_config_targetCheckbox:SetScript("OnClick", 
    function()
        BorderlessTarget = Borderless_config_targetCheckbox:GetChecked();
    end
);
Borderless_config_focusCheckbox = createCheckbutton(Borderless_config.panel, "No borders around the focusframe", "Removes the border around the focusframe");
Borderless_config_focusCheckbox:SetScript("OnClick", 
    function()
        BorderlessFocus = BorderBorderless_config_focusCheckboxless_config_dragonsCheckbox:GetChecked();
    end
);
Borderless_config_bagsMicroMenuCheckbox = createCheckbutton(Borderless_config.panel, "No borders around the micro game menu", "Remove the borders around the micro game menu");
Borderless_config_bagsMicroMenuCheckbox:SetScript("OnClick", 
    function()
        BorderlessMenu = Borderless_config_bagsMicroMenuCheckbox:GetChecked();
    end
);
Borderless_config_objectiveTrackerCheckbox = createCheckbutton(Borderless_config.panel, "Objective Tracker", "Removes the border and header column effects of the objective tracker");
Borderless_config_objectiveTrackerCheckbox:SetScript("OnClick", 
    function()
        BorderlessObjectiveTracker = Borderless_config_objectiveTrackerCheckbox:GetChecked();
    end
);