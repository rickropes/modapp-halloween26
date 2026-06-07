@icon("res://Features/Bully/icon_magenta.png")
extends Bully

const LOCATIONS := {
	Constants.Locations.FRONT: [
		Constants.Locations.STORE
	],
	Constants.Locations.STORE: [
		Constants.Locations.STORE2
	],
	Constants.Locations.STORE2: [
		Constants.Locations.WH1,
		Constants.Locations.LOUNGE
	],
	Constants.Locations.WH1: [
		Constants.Locations.CORNERL,
		Constants.Locations.LOUNGE,
		Constants.Locations.OFFICE
	],
	Constants.Locations.CORNERL: [
		Constants.Locations.OFFICE,
		Constants.Locations.WH1
	],
	Constants.Locations.LOUNGE: [
		Constants.Locations.WH1,
		Constants.Locations.CORNERL
	]
}

const SPRITES := {
	Constants.Locations.FRONT: [
		["res://Features/Camera/Assets/front-m.png", 0]
	],
	Constants.Locations.STORE: [
		["res://Features/Camera/Assets/store-m.png", 0]
	],
	Constants.Locations.STORE2: [
		["res://Features/Camera/Assets/store2-m.png", 0]
	],
	Constants.Locations.WH1: [
		["res://Features/Camera/Assets/wh1-m.png", 0]
	],
	Constants.Locations.CORNERL: [
		["res://Features/Camera/Assets/cornerL-m.png", 0]
	],
	Constants.Locations.LOUNGE: [
		["res://Features/Camera/Assets/lounge-m.png", 0]
	]
}

func _PossibleMovements():
	return LOCATIONS

func _SpriteLocations():
	return SPRITES
