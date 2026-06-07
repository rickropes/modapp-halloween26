@icon("res://Features/Bully/icon_cyan.png")
extends Bully

const LOCATIONS := {
	Constants.Locations.FRONT: [
		Constants.Locations.STORE
	],
	Constants.Locations.STORE: [
		Constants.Locations.BACK,
		Constants.Locations.WH2
	],
	Constants.Locations.BACK: [
		Constants.Locations.WH2
	],
	Constants.Locations.WH2: [
		Constants.Locations.CORNERR,
		Constants.Locations.TRASH
	],
	Constants.Locations.CORNERR: [
		Constants.Locations.TRASH,
		Constants.Locations.OFFICE
	],
	Constants.Locations.TRASH: [
		Constants.Locations.CORNERR,
		Constants.Locations.OFFICE
	]
}

const SPRITES := {
	Constants.Locations.FRONT: [
		["res://Features/Camera/Assets/front-c.png", 0]
	],
	Constants.Locations.STORE: [
		["res://Features/Camera/Assets/store-c.png", 0]
	],
	Constants.Locations.BACK: [
		["res://Features/Camera/Assets/back-c.png", 0]
	],
	Constants.Locations.WH2: [
		["res://Features/Camera/Assets/wh2-c.png", 0]
	],
	Constants.Locations.CORNERR: [
		["res://Features/Camera/Assets/cornerR-c.png", 0]
	],
	Constants.Locations.TRASH: [
		["res://Features/Camera/Assets/trash-c.png", 0]
	]
}

func _PossibleMovements():
	return LOCATIONS

func _SpriteLocations():
	return SPRITES
