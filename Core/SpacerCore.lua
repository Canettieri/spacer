--[[
	Description: This plugin is part of the "Titan Panel [Spacer]" addon.
	Site: https://www.curseforge.com/wow/addons/titan-panel-spacer
	Author: Canettieri
	Special Thanks to Eliote.
--]]

local ADDON_NAME, L = ...;
local ACE = LibStub("AceLocale-3.0"):GetLocale("Titan", true)
L.Elib = LibStub("Elib-4.0").Register

local function ToggleShowText(self, id) -- Toggle to show symbols
	TitanToggleVar(id, "ShowText");
	TitanPanelButton_UpdateButton(id)
end

local function ToggleRightSideDisplay(self, id) -- Right side display
	TitanToggleVar(id, "DisplayOnRightSide");
	TitanPanel_InitPanelButtons();
end

local function ToggleMoreSpace(self, id) -- Hide Max display
	TitanToggleVar(id, "MoreSpace");
	TitanPanelButton_UpdateButton(id)
end

function L.PrepareSpacerMenu(eddm, self, id)
	eddm.UIDropDownMenu_AddButton({
		text = TitanPlugins[id].menuText,
		hasArrow = false,
		isTitle = true,
		isUninteractable = true,
		notCheckable = true
	})

	info = {};
	info.text = L["show"];
	info.func = ToggleShowText;
	info.arg1 = id
	info.checked = TitanGetVar(id, "ShowText");
	eddm.UIDropDownMenu_AddButton(info);

	info = {};
	info.text = L["more"];
	info.func = ToggleMoreSpace;
	info.arg1 = id
	info.checked = TitanGetVar(id, "MoreSpace");
	eddm.UIDropDownMenu_AddButton(info);

	info = {};
	info.text = ACE["TITAN_CLOCK_MENU_DISPLAY_ON_RIGHT_SIDE"];
	info.func = ToggleRightSideDisplay;
	info.arg1 = id
	info.checked = TitanGetVar(id, "DisplayOnRightSide");
	eddm.UIDropDownMenu_AddButton(info);

	eddm.UIDropDownMenu_AddSpace();

	eddm.UIDropDownMenu_AddButton({
		notCheckable = true,
		text = ACE["TITAN_PANEL_MENU_HIDE"],
		func = function() TitanPanelRightClickMenu_Hide(id) end
	})

	eddm.UIDropDownMenu_AddSeparator();

	info = {};
	info.text = CLOSE;
	info.notCheckable = true
	info.keepShownOnClick = false
	eddm.UIDropDownMenu_AddButton(info);
end
