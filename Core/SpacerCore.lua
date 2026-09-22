--[[
	Description: This plugin is part of the "Titan Panel [Spacer]" addon.
	Site: https://www.curseforge.com/wow/addons/titan-panel-spacer
	Author: Canettieri
	Special Thanks to Eliote.
--]]

local _, L = ...;
local ACE = LibStub("AceLocale-3.0"):GetLocale("Titan", true)
L.Elib = LibStub("Elib-4.0").Register

local function ToggleShowText(_, id) -- Toggle to show symbols
	TitanToggleVar(id, "ShowText");
	TitanPanelButton_UpdateButton(id)
end

local function ToggleRightSideDisplay(_, id) -- Right side display
	local bar = TitanUtils_GetWhichBar(id)
	TitanToggleVar(id, "DisplayOnRightSide");
	TitanPanel_RemoveButton(id);
	TitanUtils_AddButtonOnBar(bar, id);
	TitanPanelButton_UpdateButton(id)
end

local function ToggleMoreSpace(_, id) -- Hide Max display
	TitanToggleVar(id, "MoreSpace");
	TitanPanelButton_UpdateButton(id)
end

function L.PrepareSpacerMenu(eddm, _, id)
	local info

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
	info.keepShownOnClick = true
	eddm.UIDropDownMenu_AddButton(info);

	info = {};
	info.text = L["more"];
	info.func = ToggleMoreSpace;
	info.arg1 = id
	info.checked = TitanGetVar(id, "MoreSpace");
	info.keepShownOnClick = true
	eddm.UIDropDownMenu_AddButton(info);

	info = {};
	info.text = ACE["TITAN_CLOCK_MENU_DISPLAY_ON_RIGHT_SIDE"];
	info.func = ToggleRightSideDisplay;
	info.arg1 = id
	info.checked = TitanGetVar(id, "DisplayOnRightSide");
	info.keepShownOnClick = true
	eddm.UIDropDownMenu_AddButton(info);

	eddm.UIDropDownMenu_AddSpace();
	eddm.UIDropDownMenu_AddButton({
		text = L["barPosition"],
		hasArrow = false,
		isTitle = true,
		isUninteractable = true,
		notCheckable = true
	})

	eddm.UIDropDownMenu_AddButton({
		text = L["moveRight"],
		func = function() TitanUtils_ShiftButtonOnBarRight(id) end,
		keepShownOnClick = true,
		notCheckable = true
	})

	eddm.UIDropDownMenu_AddButton({
		text = L["moveLeft"],
		func = function() TitanUtils_ShiftButtonOnBarLeft(id) end,
		keepShownOnClick = true,
		notCheckable = true
	})

	eddm.UIDropDownMenu_AddSeparator();

	eddm.UIDropDownMenu_AddButton({
		notCheckable = true,
		text = ACE["TITAN_PANEL_MENU_HIDE"],
		func = function() TitanPanelRightClickMenu_Hide(id) end
	})

	info = {};
	info.text = CLOSE;
	info.notCheckable = true
	info.keepShownOnClick = false
	eddm.UIDropDownMenu_AddButton(info);
end
