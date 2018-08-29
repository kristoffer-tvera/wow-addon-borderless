Borderless_config = {};
local _, L = ...;
local addonName = L["borderless"];
local capitalizedAddonName = string.gsub(addonName, "(%w)", string.upper, 1); --Capitalize
local y_increment = -25;
local x_indentation = 5;
local unique = 1;

Borderless_config.panel = CreateFrame( "Frame", "BorderlessConfigFrame", UIParent );
Borderless_config.panel.name = capitalizedAddonName;
InterfaceOptions_AddCategory(Borderless_config.panel);

function createCheckbutton(parent, displayname, tooltip)
    
	local checkbutton = CreateFrame("CheckButton", "BorderlessConfigFrameCheckbox" .. unique, parent, "ChatConfigCheckButtonTemplate");
    checkbutton:SetPoint("TOPLEFT", x_indentation, (y_increment * unique));
    -- checkbutton_GlobalNameText:SetText(displayname);
    getglobal(checkbutton:GetName() .. 'Text'):SetText(displayname);
    checkbutton.tooltip = tooltip;
    
    unique = unique + 1;
	return checkbutton;
end

function createTextFrame(parent, text, fontsize, heightMultiplier)
    local fontFrame = CreateFrame("Frame", "BorderlessConfigFrameTextbox" .. unique, parent);
    fontFrame:SetSize(600, fontsize * heightMultiplier);
    fontFrame:SetPoint("TOPLEFT", x_indentation, (y_increment * unique));
    fontFrame.text =
    fontFrame:CreateFontString(nil,"ARTWORK");
    fontFrame.text:SetAllPoints(true);
    fontFrame.text:SetFont("Fonts\\FRIZQT__.TTF", fontsize);
    fontFrame.text:SetText(text);

    unique = unique + 1;
    return fontFrame;
end

Borderless_config_introFrame = createTextFrame(Borderless_config.panel, "-->> " .. capitalizedAddonName .. " <<--", 25, 1);

local function LoadSettingsAndConfig()
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
    
    Borderless_config_classIconCheckbox = createCheckbutton(Borderless_config.panel, L["Overwrite Player, Target and Focus portrait with class icon"], L["Overwrite portraits with class icon. Disabling this requires a reload"]);
    Borderless_config_classIconCheckbox:SetChecked(BorderlessClassIcon);
    Borderless_config_classIconCheckbox:SetScript("OnClick", 
        function()
            BorderlessClassIcon = Borderless_config_classIconCheckbox:GetChecked();
            Borderless:ClassIcon(BorderlessClassIcon);
        end
    );
    
    local githubUrl = 'https://github.com/kristoffer-tvera/wow-addon-borderless';
    
    Borderless_config_introFrame = createTextFrame(Borderless_config.panel, "Made by BZL#2429 on EU-Defias Brotherhood", 16, 1);
    Borderless_config_introFrame = createTextFrame(Borderless_config.panel, "For ideas, suggestions, issues, or help with translations, " .. githubUrl, 14, 3);

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
    Borderless:ClassIcon(BorderlessClassIcon);

end

Borderless_config.panel:RegisterEvent("ADDON_LOADED");
Borderless_config.panel:SetScript("OnEvent", LoadSettingsAndConfig);

-- Register a slashcommand to quickly modify settings
SLASH_BORDERLESS1 = '/'..addonName;
SlashCmdList["BORDERLESS"] = function(msg)
    InterfaceOptionsFrame_OpenToCategory(Borderless_config.panel);
    InterfaceOptionsFrame_OpenToCategory(Borderless_config.panel);
end 
