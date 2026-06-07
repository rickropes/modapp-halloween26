@icon("res://Features/Bully/icon_camera.png")
extends Node

@onready var cyan: Bully = $"../Cyan"

@onready var VIEWS = {
	Constants.Locations.FRONT: $"../../CameraScreen/Content/Backgrounds/FRONT",
	Constants.Locations.STORE: $"../../CameraScreen/Content/Backgrounds/STORE",
	Constants.Locations.WH1: $"../../CameraScreen/Content/Backgrounds/WH1",
	Constants.Locations.WH2: $"../../CameraScreen/Content/Backgrounds/WH2",
	Constants.Locations.LOUNGE: $"../../CameraScreen/Content/Backgrounds/LOUNGE",
	Constants.Locations.CORNERR: $"../../CameraScreen/Content/Backgrounds/CORNER_R",
	Constants.Locations.CORNERL: $"../../CameraScreen/Content/Backgrounds/CORNER_L",
	Constants.Locations.BACK: $"../../CameraScreen/Content/Backgrounds/BACK",
	Constants.Locations.BLACK: $"../../CameraScreen/Content/Backgrounds/BLACK",
	Constants.Locations.STORE2: $"../../CameraScreen/Content/Backgrounds/STORE2",
	Constants.Locations.TRASH: $"../../CameraScreen/Content/Backgrounds/TRASH",
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
