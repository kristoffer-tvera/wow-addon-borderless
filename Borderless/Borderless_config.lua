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

Borderless_config_dragonsCheckbox = createCheckbutton(Borderless_config.panel, "Test booly0", "mouseover0");
Borderless_config_dragonsCheckbox:SetScript("OnClick", 
    function()
        print('actionbars ' .. Borderless_config_dragonsCheckbox:GetChecked());
    end
);

Borderless_config_actionBarsCheckbox = createCheckbutton(Borderless_config.panel, "Test booly", "mouseover1");
Borderless_config_actionBarsCheckbox:SetScript("OnClick", 
    function()
        print('actionbars ' .. Borderless_config_actionBarsCheckbox:GetChecked());
    end
);
Borderless_config_miniMapCheckbox = createCheckbutton(Borderless_config.panel, "Test booly2", "mouseover2");
Borderless_config_miniMapCheckbox:SetScript("OnClick", 
    function()
        print('actionbars ' .. Borderless_config_miniMapCheckbox:GetChecked());
    end
);
Borderless_config_playerCheckbox = createCheckbutton(Borderless_config.panel, "Test booly3", "mouseover3");
Borderless_config_playerCheckbox:SetScript("OnClick", 
    function()
        print('actionbars ' .. Borderless_config_playerCheckbox:GetChecked());
    end
);
Borderless_config_targetCheckbox = createCheckbutton(Borderless_config.panel, "Test booly4", "mouseover4");
Borderless_config_targetCheckbox:SetScript("OnClick", 
    function()
        print('actionbars ' .. Borderless_config_targetCheckbox:GetChecked());
    end
);
Borderless_config_focusCheckbox = createCheckbutton(Borderless_config.panel, "Test booly5", "mouseover5");
Borderless_config_focusCheckbox:SetScript("OnClick", 
    function()
        print('actionbars ' .. Borderless_config_focusCheckbox:GetChecked());
    end
);
Borderless_config_bagsMicroMenuCheckbox = createCheckbutton(Borderless_config.panel, "Test booly6", "mouseover6");
Borderless_config_bagsMicroMenuCheckbox:SetScript("OnClick", 
    function()
        print('actionbars ' .. Borderless_config_bagsMicroMenuCheckbox:GetChecked());
    end
);
