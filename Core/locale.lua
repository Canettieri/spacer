--[[
	Author: Canettieri
--]]

local _, L = ...;
L["more"] = "Larger Spacer"
L["show"] = "Show Symbol"
L["barPosition"] = "Bar Position"
L["moveRight"] = "Move Right"
L["moveLeft"] = "Move Left"

local translations = {
	deDE = {
		more = "Größerer Abstand",
		show = "Symbol anzeigen",
		barPosition = "Position auf der Leiste",
		moveRight = "Nach rechts verschieben",
		moveLeft = "Nach links verschieben",
	},
	esES = {
		more = "Espaciador más grande",
		show = "Mostrar símbolo",
		barPosition = "Posición en la barra",
		moveRight = "Mover a la derecha",
		moveLeft = "Mover a la izquierda",
	},
	esMX = {
		more = "Espaciador más grande",
		show = "Mostrar símbolo",
		barPosition = "Posición en la barra",
		moveRight = "Mover a la derecha",
		moveLeft = "Mover a la izquierda",
	},
	frFR = {
		more = "Espacement plus grand",
		show = "Afficher le symbole",
		barPosition = "Position sur la barre",
		moveRight = "Déplacer vers la droite",
		moveLeft = "Déplacer vers la gauche",
	},
	itIT = {
		more = "Spaziatore più grande",
		show = "Mostra simbolo",
		barPosition = "Posizione sulla barra",
		moveRight = "Sposta a destra",
		moveLeft = "Sposta a sinistra",
	},
	koKR = {
		more = "더 넓은 간격",
		show = "기호 표시",
		barPosition = "바 위치",
		moveRight = "오른쪽으로 이동",
		moveLeft = "왼쪽으로 이동",
	},
	ptBR = {
		more = "Espaçamento Maior",
		show = "Mostrar Caracteres",
		barPosition = "Posição na Barra",
		moveRight = "Mover à Direita",
		moveLeft = "Mover à Esquerda",
	},
	ruRU = {
		more = "Больший промежуток",
		show = "Показывать символ",
		barPosition = "Положение на панели",
		moveRight = "Переместить вправо",
		moveLeft = "Переместить влево",
	},
	zhCN = {
		more = "更大的间距",
		show = "显示符号",
		barPosition = "栏位置",
		moveRight = "向右移动",
		moveLeft = "向左移动",
	},
	zhTW = {
		more = "較大的間距",
		show = "顯示符號",
		barPosition = "列位置",
		moveRight = "向右移動",
		moveLeft = "向左移動",
	},
}

local locale = translations[GetLocale()]
if locale then
	for key, text in pairs(locale) do
		L[key] = text
	end
end
