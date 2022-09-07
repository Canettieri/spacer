--[[
	Description: This plugin is part of the "Titan Panel [Spacer]" addon.
	Site: https://www.curseforge.com/wow/addons/titan-panel-spacer
	Author: Canettieri
	Special Thanks to Eliote.
--]]

local ADDON_NAME, L = ...;
local ACE = LibStub("AceLocale-3.0"):GetLocale("TitanClassic", true)
local Elib = LibStub("Elib-3.0")
L.Elib = Elib.Register

local function ToggleShowText(self, id) -- Hide Max display
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

	L_UIDropDownMenu_AddButton({
		notCheckable = true,
		text = ACE["TITAN_PANEL_MENU_HIDE"],
		func = function() TitanPanelRightClickMenu_Hide(id) end
	})

	L_UIDropDownMenu_AddSeparator();

	info = {};
	info.text = CLOSE;
	info.notCheckable = true
	info.keepShownOnClick = false
	L_UIDropDownMenu_AddButton(info);
end
----------------------------------------------
