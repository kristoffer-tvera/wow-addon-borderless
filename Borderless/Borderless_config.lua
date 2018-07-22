Borderless_config = {};
local _, L = ...;

Borderless_config.panel = CreateFrame( "Frame", "BorderlessConfigFrame", UIParent );
-- Register in the Interface Addon Options GUI
-- Set the name for the Category for the Options Panel
Borderless_config.panel.name = "Borderless";
-- Add the panel to the Interface Options
InterfaceOptions_AddCategory(Borderless_config.panel);

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

Borderless_config_dragonsCheckbox = createCheckbutton(Borderless_config.panel, L["No dragons/lions"], L["Remove the dragons around the actionbars"]);
Borderless_config_dragonsCheckbox:SetChecked(BorderlessDragons);
Borderless_config_dragonsCheckbox:SetScript("OnClick", 
    function()
        BorderlessDragons = Borderless_config_dragonsCheckbox:GetChecked();
        Borderless:Dragons(BorderlessDragons);
    end
);

Borderless_config_actionBarsCheckbox = createCheckbutton(Borderless_config.panel, L["No borders around actionbars"], L["Removes the borders around all the actionbar items"]);
Borderless_config_actionBarsCheckbox:SetChecked(BorderlessActionbars);
Borderless_config_actionBarsCheckbox:SetScript("OnClick", 
    function()
        BorderlessActionbars = Borderless_config_actionBarsCheckbox:GetChecked();
        Borderless:Actionbars(BorderlessActionbars);
    end
);

Borderless_config_miniMapCheckbox = createCheckbutton(Borderless_config.panel, L["No borders around minimap"], L["Removes the borders around the minimap"]);
Borderless_config_miniMapCheckbox:SetChecked(BorderlessMinimap);
Borderless_config_miniMapCheckbox:SetScript("OnClick", 
    function()
        BorderlessMinimap = Borderless_config_miniMapCheckbox:GetChecked();
        Borderless:Minimap(BorderlessMinimap);
    end
);

Borderless_config_playerCheckbox = createCheckbutton(Borderless_config.panel, L["No borders around the playerframe"], L["Removes the border around the playerframe"]);
Borderless_config_playerCheckbox:SetChecked(BorderlessPlayer);
Borderless_config_playerCheckbox:SetScript("OnClick", 
    function()
        BorderlessPlayer = Borderless_config_playerCheckbox:GetChecked();
        Borderless:Player(BorderlessPlayer);
    end
);

Borderless_config_targetCheckbox = createCheckbutton(Borderless_config.panel, L["No borders around the targetframe"], L["Removes the border around the targetframe"]);
Borderless_config_targetCheckbox:SetChecked(BorderlessTarget);
Borderless_config_targetCheckbox:SetScript("OnClick", 
    function()
        BorderlessTarget = Borderless_config_targetCheckbox:GetChecked();
        Borderless:Target(BorderlessTarget);
    end
);

Borderless_config_focusCheckbox = createCheckbutton(Borderless_config.panel, L["No borders around the focusframe"], L["Removes the border around the focusframe"]);
Borderless_config_focusCheckbox:SetChecked(BorderlessFocus);
Borderless_config_focusCheckbox:SetScript("OnClick", 
    function()
        BorderlessFocus = Borderless_config_focusCheckbox:GetChecked();
        Borderless:Focus(BorderlessFocus);
    end
);

Borderless_config_castBarCheckbox = createCheckbutton(Borderless_config.panel, L["No borders around the castbar"], L["Removes the border around the castbar"]);
Borderless_config_castBarCheckbox:SetChecked(BorderlessFocus);
Borderless_config_castBarCheckbox:SetScript("OnClick", 
    function()
        BorderlessCastbar = Borderless_config_castBarCheckbox:GetChecked();
        Borderless:Castbar(BorderlessCastbar);
    end
);

Borderless_config_microMenuCheckbox = createCheckbutton(Borderless_config.panel, L["No borders around the micro game menu"], L["Remove the borders around the micro game menu"]);
Borderless_config_microMenuCheckbox:SetChecked(BorderlessMenu);
Borderless_config_microMenuCheckbox:SetScript("OnClick", 
    function()
        BorderlessMenu = Borderless_config_microMenuCheckbox:GetChecked();
        Borderless:Menu(BorderlessMenu);
    end
);

Borderless_config_bagsCheckbox = createCheckbutton(Borderless_config.panel, L["Hide the bags"], L["Remove the bags over the ingame micro-menu line"]);
Borderless_config_bagsCheckbox:SetChecked(BorderlessBags);
Borderless_config_bagsCheckbox:SetScript("OnClick", 
    function()
        BorderlessBags = Borderless_config_bagsCheckbox:GetChecked();
        Borderless:Bags(BorderlessBags);
    end
);

Borderless_config_objectiveTrackerCheckbox = createCheckbutton(Borderless_config.panel, L["Objective Tracker"], L["Removes the border and header column effects of the objective tracker"]);
Borderless_config_objectiveTrackerCheckbox:SetChecked(BorderlessObjectiveTracker);
Borderless_config_objectiveTrackerCheckbox:SetScript("OnClick", 
    function()
        BorderlessObjectiveTracker = Borderless_config_objectiveTrackerCheckbox:GetChecked();
        Borderless:Objectivetracker(BorderlessObjectiveTracker);
    end
);

-- Register a slashcommand to quickly modify settings
SLASH_BORDERLESS1 = '/borderless';
SlashCmdList["BORDERLESS"] = function(msg)
    InterfaceOptionsFrame_OpenToCategory(Borderless_config.panel);
end 