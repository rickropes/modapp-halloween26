@icon("res://Features/Bully/icon_camera.png")
extends Node

@onready var cyan: Bully = $"../Cyan"

@onready var VIEWS = {
	Constants.Locations.FRONT: $"../../CameraScreen/Backgrounds/FRONT",
	Constants.Locations.STORE: $"../../CameraScreen/Backgrounds/STORE",
	Constants.Locations.WH1: $"../../CameraScreen/Backgrounds/WH1",
	Constants.Locations.WH2: $"../../CameraScreen/Backgrounds/WH2",
	Constants.Locations.LOUNGE: $"../../CameraScreen/Backgrounds/LOUNGE",
	Constants.Locations.CORNERR: $"../../CameraScreen/Backgrounds/CORNER_R",
	Constants.Locations.CORNERL: $"../../CameraScreen/Backgrounds/CORNER_L",
	Constants.Locations.BACK: $"../../CameraScreen/Backgrounds/BACK",
	Constants.Locations.BLACK: $"../../CameraScreen/Backgrounds/BLACK",
	Constants.Locations.STORE2: $"../../CameraScreen/Backgrounds/STORE2",
	Constants.Locations.TRASH: $"../../CameraScreen/Backgrounds/TRASH",
}

var Position = Constants.Locations.FRONT

signal changedView(view: Constants.Locations)

func _ready() -> void:
	ChangeView(Position)

func RefreshBully(oldPosition, newPosition):
	if Position == oldPosition || Position == newPosition:
		#Add Static here
		ChangeView(Position)

func ChangeView(view: Constants.Locations):
	for i in VIEWS.values():
		i.visible = false
		
	var viewSprite = VIEWS[view]
	viewSprite.visible = true
	Position = view
	
	changedView.emit(view)
	pass
