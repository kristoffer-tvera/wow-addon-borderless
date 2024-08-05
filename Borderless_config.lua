Borderless_config = {};
local _, L = ...;
local addonName = L["borderless"];
local capitalizedAddonName = string.gsub(addonName, "(%w)", string.upper, 1); -- Capitalize
local y_increment = -25;
local x_indentation = 5;
local unique = 1;

Borderless_config.panel = CreateFrame("Frame", "BorderlessConfigFrame", UIParent);
Borderless_config.panel.name = capitalizedAddonName;

category, layout = Settings.RegisterCanvasLayoutCategory(Borderless_config.panel, Borderless_config.panel.name,
    Borderless_config.panel.name);
category.ID = Borderless_config.panel.name
Settings.RegisterAddOnCategory(category);

function createCheckbutton(parent, prechecked, displayname, tooltip)
    local checkbutton = CreateFrame("CheckButton", "BorderlessConfigFrameCheckbox" .. unique, parent,
        "ChatConfigCheckButtonTemplate");
    checkbutton:SetPoint("TOPLEFT", x_indentation, (y_increment * unique));
    checkbutton:SetChecked(prechecked);
    getglobal(checkbutton:GetName() .. 'Text'):SetText(displayname);
    checkbutton.tooltip = tooltip;

    unique = unique + 1;
    return checkbutton;
end

function createTextFrame(parent, text, fontsize, heightMultiplier)
    local fontFrame = CreateFrame("Frame", "BorderlessConfigFrameTextbox" .. unique, parent);
    fontFrame:SetSize(600, fontsize * heightMultiplier);
    fontFrame:SetPoint("TOPLEFT", x_indentation, (y_increment * unique));
    fontFrame.text = fontFrame:CreateFontString(nil, "ARTWORK");
    fontFrame.text:SetAllPoints(true);
    fontFrame.text:SetFont("Fonts\\FRIZQT__.TTF", fontsize);
    fontFrame.text:SetText(text);

    unique = unique + 1;
    return fontFrame;
end

Borderless_config_introFrame = createTextFrame(Borderless_config.panel, "-->> " .. capitalizedAddonName .. " <<--", 25,
    1);

local function LoadSettingsAndConfig()
    Borderless_config.panel:UnregisterEvent("ADDON_LOADED");

    Borderless_config_dragonsCheckbox = createCheckbutton(Borderless_config.panel, BorderlessDragons,
        L["No dragons/lions"], L["Remove the dragons around the actionbars"]);
    Borderless_config_dragonsCheckbox:SetScript("OnClick", function()
        BorderlessDragons = Borderless_config_dragonsCheckbox:GetChecked();
        Borderless:Dragons(BorderlessDragons);
    end);

    Borderless_config_actionBarsCheckbox = createCheckbutton(Borderless_config.panel, BorderlessActionbars,
        L["No borders around actionbars"], L["Removes the borders around all the actionbar items"]);
    Borderless_config_actionBarsCheckbox:SetScript("OnClick", function()
        BorderlessActionbars = Borderless_config_actionBarsCheckbox:GetChecked();
        Borderless:Actionbars(BorderlessActionbars);
    end);

    Borderless_config_bagsCheckbox = createCheckbutton(Borderless_config.panel, BorderlessBags, L["Hide the bags"],
        L["Remove the bags over the ingame micro-menu line"]);
    Borderless_config_bagsCheckbox:SetScript("OnClick", function()
        BorderlessBags = Borderless_config_bagsCheckbox:GetChecked();
        Borderless:Bags(BorderlessBags);
    end);

    Borderless_config_objectiveTrackerCheckbox = createCheckbutton(Borderless_config.panel, BorderlessObjectiveTracker,
        L["Objective Tracker"], L["Removes the border and header column effects of the objective tracker"]);
    Borderless_config_objectiveTrackerCheckbox:SetScript("OnClick", function()
        BorderlessObjectiveTracker = Borderless_config_objectiveTrackerCheckbox:GetChecked();
        Borderless:Objectivetracker(BorderlessObjectiveTracker);
    end);

    Borderless_config_classIconCheckbox = createCheckbutton(Borderless_config.panel, BorderlessClassIcon,
        L["Overwrite Player, Target and Focus portrait with class icon"],
        L["Overwrite portraits with class icon. Disabling this requires a reload"]);
    Borderless_config_classIconCheckbox:SetScript("OnClick", function()
        BorderlessClassIcon = Borderless_config_classIconCheckbox:GetChecked();
        Borderless:ClassIcon(BorderlessClassIcon, false);
    end);

    Borderless_config_statusBarCheckbox = createCheckbutton(Borderless_config.panel, BorderlessStatusBar,
        L["Status bar"], L["The bar below actionbars that shows xp, reputation, honor, azerite, etc"]);
    Borderless_config_statusBarCheckbox:SetScript("OnClick", function()
        BorderlessStatusBar = Borderless_config_statusBarCheckbox:GetChecked();
        Borderless:StatusBar(BorderlessStatusBar, false);
    end);

    Borderless_config_talkingHeadsCheckbox = createCheckbutton(Borderless_config.panel, BorderlessTalkingHeads,
        L["Talking Popup"],
        L["This is the popup that shows a picture and some dialog when you enter certain dungeons/quests"]);
    Borderless_config_talkingHeadsCheckbox:SetScript("OnClick", function()
        BorderlessTalkingHeads = Borderless_config_talkingHeadsCheckbox:GetChecked();
        -- Borderless:TalkingHead(BorderlessTalkingHeads, false);
    end);

    local githubUrl = 'https://github.com/kristoffer-tvera/wow-addon-borderless';

    Borderless_config_introFrame = createTextFrame(Borderless_config.panel, "Made by BZL#2429 on EU-Defias Brotherhood",
        16, 1);
    Borderless_config_introFrame = createTextFrame(Borderless_config.panel,
        "For ideas, suggestions, issues, or help with translations, " .. githubUrl, 14, 3);

    Borderless:Dragons(BorderlessDragons);
    Borderless:Bags(BorderlessBags);
    Borderless:Objectivetracker(BorderlessObjectiveTracker);
    Borderless:Actionbars(BorderlessActionbars);
    Borderless:ClassIcon(BorderlessClassIcon, true);
    Borderless:StatusBar(BorderlessStatusBar, true);
    -- Borderless:TalkingHead(BorderlessTalkingHeads, true);
end

Borderless_config.panel:RegisterEvent("ADDON_LOADED");
Borderless_config.panel:SetScript("OnEvent", LoadSettingsAndConfig);

-- Register a slashcommand to quickly modify settings
SLASH_BORDERLESS1 = '/' .. addonName;
SlashCmdList["BORDERLESS"] = function(msg)
    InterfaceOptionsFrame_OpenToCategory(Borderless_config.panel);
    InterfaceOptionsFrame_OpenToCategory(Borderless_config.panel);
end
