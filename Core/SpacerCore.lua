--[[
	Description: This plugin is part of the "Titan Panel [Spacer]" addon.
	Site: http://www.curse.com/addons/wow/titan-panel-spacer
	Author: Canettieri
	Special Thanks to Eliote.
--]]

local ADDON_NAME, L = ...;
local ACE = LibStub("AceLocale-3.0"):GetLocale("Titan", true)

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

function L.PrepareSpacerMenu(self, id)
	TitanPanelRightClickMenu_AddTitle(TitanPlugins[id].menuText)

	info = {};
	info.text = L["show"];
	info.func = ToggleShowText;
	info.arg1 = id
	info.checked = TitanGetVar(id, "ShowText");
	L_UIDropDownMenu_AddButton(info);

	info = {};
	info.text = L["more"];
	info.func = ToggleMoreSpace;
	info.arg1 = id
	info.checked = TitanGetVar(id, "MoreSpace");
	L_UIDropDownMenu_AddButton(info);

	info = {};
	info.text = ACE["TITAN_CLOCK_MENU_DISPLAY_ON_RIGHT_SIDE"];
	info.func = ToggleRightSideDisplay;
	info.arg1 = id
	info.checked = TitanGetVar(id, "DisplayOnRightSide");
	L_UIDropDownMenu_AddButton(info);

	TitanPanelRightClickMenu_AddSpacer();
	TitanPanelRightClickMenu_AddCommand(ACE["TITAN_PANEL_MENU_HIDE"], id, TITAN_PANEL_MENU_FUNC_HIDE);
end
----------------------------------------------
