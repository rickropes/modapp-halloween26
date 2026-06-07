class_name Bully
extends Node

@export var AILevel : int = 1
@export var RangeForMovementOpportunity = Vector2(3.0, 5.0)

@export var Position := Constants.Locations.FRONT

@export var SpriteNode : Sprite2D

var currentMovementTimer = -1.0
var currentTexture = ""
var currentTextureZIndex = 0

var cameraController

func _ready() -> void:
	cameraController = get_node("../Camera")
	ResetMovementTimer()
	SetPosition(Constants.Locations.FRONT, false)

func _process(delta: float) -> void:
	currentMovementTimer -= delta
	
	if currentMovementTimer <= 0.0:
		MovementOpportunity()
		ResetMovementTimer()

func _PossibleMovements():
	return {}

func _SpriteLocations():
	return {}

func ResetMovementTimer():
	currentMovementTimer = randf_range(RangeForMovementOpportunity.x, RangeForMovementOpportunity.y)

func MovementOpportunity():
	var movement = randi_range(1, 20)
	if movement <= AILevel:
		if Position == Constants.Locations.OFFICE:
			# KILL OR MOVE BACK
			print("DEAD")
		else:
			var possibleMoves = _PossibleMovements()[Position] as Array[Constants.Locations]
			var pos = possibleMoves.pick_random()
			SetPosition(pos)
	pass

func SetPosition(newPosition, refreshCamera = true):
	var oldPosition = Position
	Position = newPosition
	
	if refreshCamera:
		cameraController.RefreshBully(oldPosition, Position)
	
	if newPosition == Constants.Locations.OFFICE:
		return
		
	var newTexture = _SpriteLocations()[Position].pick_random()
	currentTexture = newTexture[0]
	currentTextureZIndex = newTexture[1]
	
	if cameraController.Position == Position:
		_on_camera_changed_view(Position)
	

func _on_camera_changed_view(view: Constants.Locations) -> void:
	if view != Position:
		SpriteNode.visible = false
	else:
		SpriteNode.texture = load(currentTexture)
		SpriteNode.z_index = currentTextureZIndex
		SpriteNode.visible = true
	pass # Replace with function body.


func DebugText():
	return "%s -- %s -- %s -- %.2f" % [name, AILevel, Constants.Locations.keys()[Position], currentMovementTimer]
