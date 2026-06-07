extends Node2D

@onready var cyan: Node = $"../LOGIC_NODES/Cyan"
@onready var magenta: Node = $"../LOGIC_NODES/Magenta"
@onready var yellow: Node = $"../LOGIC_NODES/Yellow"

@onready var camera: Node = $"../LOGIC_NODES/Camera"

func ChangeScreen(clickedButton: Button):
	camera.ChangeView(clickedButton.Location)
	pass

func _process(delta: float) -> void:
	queue_redraw()

func _draw() -> void:
	draw_string(ThemeDB.fallback_font, Vector2(10, 30), cyan.DebugText())
	draw_string(ThemeDB.fallback_font, Vector2(10, 50), magenta.DebugText())
	draw_string(ThemeDB.fallback_font, Vector2(10, 70), yellow.DebugText())
