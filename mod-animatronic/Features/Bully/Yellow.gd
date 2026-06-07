@icon("res://Features/Bully/icon_yellow.png")
extends Bully

const LOCATIONS := {
	Constants.Locations.FRONT: [
		Constants.Locations.STORE
	],
	Constants.Locations.STORE: [
		Constants.Locations.STORE2
	],
	Constants.Locations.STORE2: [
		Constants.Locations.WH1
	],
	Constants.Locations.WH1: [
		Constants.Locations.CORNERL,
		Constants.Locations.WH2
	],
	Constants.Locations.CORNERL: [
		Constants.Locations.OFFICE,
		Constants.Locations.WH1
	],
	Constants.Locations.BACK: [
		Constants.Locations.WH2
	],
	Constants.Locations.WH2: [
		Constants.Locations.CORNERR,
		Constants.Locations.WH1
	],
	Constants.Locations.CORNERR: [
		Constants.Locations.WH2,
		Constants.Locations.OFFICE
	]
}

const SPRITES := {
	Constants.Locations.FRONT: [
		["res://Features/Camera/Assets/front-y.png", 0]
	],
	Constants.Locations.STORE: [
		["res://Features/Camera/Assets/store-y.png", 0]
	],
	Constants.Locations.STORE2: [
		["res://Features/Camera/Assets/store2-y.png", 0]
	],
	Constants.Locations.WH1: [
		["res://Features/Camera/Assets/wh1-y.png", 0]
	],
	Constants.Locations.CORNERL: [
		["res://Features/Camera/Assets/cornerL-y.png", 0]
	],
	Constants.Locations.BACK: [
		["res://Features/Camera/Assets/back-y.png", 0]
	],
	Constants.Locations.WH2: [
		["res://Features/Camera/Assets/wh2-y.png", 0]
	],
	Constants.Locations.CORNERR: [
		["res://Features/Camera/Assets/cornerR-y.png", 0]
	],
}

func _PossibleMovements():
	return LOCATIONS

func _SpriteLocations():
	return SPRITES
