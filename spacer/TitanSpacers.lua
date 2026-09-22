--[[
Description: A very simple plugin to add spacers in Titan Panel
Site: https://www.curseforge.com/wow/addons/titan-panel-spacer
Author: Canettieri
--]]

local ADDON_NAME, L = ...;
local GetAddOnMetadata = C_AddOns and C_AddOns.GetAddOnMetadata or GetAddOnMetadata
local version = GetAddOnMetadata(ADDON_NAME, "Version")

local spacerText = {
	[false] = {
		[false] = { [false] = "  ", [true] = "         " },
		[true] = { [false] = "--", [true] = "   ---   " },
	},
	[true] = {
		[false] = { [false] = "              ", [true] = "                   " },
		[true] = { [false] = "      --      ", [true] = "        ---        " },
	},
}

local function GetButtonText(_, id)
	return spacerText[not not TitanGetVar(id, "DisplayOnRightSide")]
		[not not TitanGetVar(id, "ShowText")]
		[not not TitanGetVar(id, "MoreSpace")]
end

local function RegisterSpacer(number)
	local id = "TITAN_ESPACO" .. (number == 1 and "" or number)

	L.Elib({
		id = id,
		name = "Titan|cFFfcb314 Spacer |cFFf3f45f#" .. string.format("%02d", number) .. "|r",
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
end

for number = 1, 10 do
	RegisterSpacer(number)
end
