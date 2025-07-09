--[[
Description: A very simple plugin to add a spacer in Titan Panel
Site: https://www.curseforge.com/wow/addons/titan-panel-spacer
Author: Canettieri
--]]

local ADDON_NAME, L = ...;
local GetAddOnMetadata = C_AddOns and C_AddOns.GetAddOnMetadata or GetAddOnMetadata
local version = GetAddOnMetadata(ADDON_NAME, "Version")
local ID = "TITAN_ESPACO10"
----------------------------------------------
local function GetButtonText(self, id)

	local SpacerText = "--"
	if not TitanGetVar(ID, "DisplayOnRightSide") then
		if TitanGetVar(ID, "ShowText") and TitanGetVar(ID, "MoreSpace") then
			SpacerText = "   ---   "
		elseif not TitanGetVar(ID, "ShowText") and not TitanGetVar(ID, "MoreSpace") then
			SpacerText = "  "
		elseif TitanGetVar(ID, "MoreSpace") and not TitanGetVar(ID, "ShowText") then
			SpacerText = "         "
		end
	else
		if TitanGetVar(ID, "ShowText") and not TitanGetVar(ID, "MoreSpace") then
			SpacerText = "      --      "
		elseif TitanGetVar(ID, "ShowText") and TitanGetVar(ID, "MoreSpace") then
			SpacerText = "        ---        "
		elseif not TitanGetVar(ID, "ShowText") and not TitanGetVar(ID, "MoreSpace") then
			SpacerText = "              "
		elseif TitanGetVar(ID, "MoreSpace") and not TitanGetVar(ID, "ShowText") then
			SpacerText = "                   "
		end
	end

	return SpacerText
end
-----------------------------------------------
L.Elib({
	id = ID,
	name = "Titan|cFFfcb314 " .. "Spacer |cFFf3f45f#10" .. "|r",
	category = "Interface",
	version = version,
	getButtonText = GetButtonText,
	prepareMenu = L.PrepareSpacerMenu,
	savedVariables = {
		ShowIcon = false,
		ShowText = true,
		DisplayOnRightSide = false,
		MoreSpace = false,
	}
})
