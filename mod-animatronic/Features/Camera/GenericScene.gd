@tool
extends CameraScene

enum Characters {CYAN, YELLOW, MAGENTA, NONE}
@export var Background : Texture2D

@export var Character1 : Characters = Characters.NONE
@export var Character1Texture : Texture2D

@export var Character2 : Characters = Characters.NONE
@export var Character2Texture : Texture2D

@export var Character3 : Characters = Characters.NONE
@export var Character3Texture : Texture2D

func PreviewScene():
	$"../../CameraScreen/BG".texture = Background
	$"../../CameraScreen/Char1".texture = Character1Texture
	$"../../CameraScreen/Char2".texture = Character2Texture
	$"../../CameraScreen/Char3".texture = Character3Texture
	pass
