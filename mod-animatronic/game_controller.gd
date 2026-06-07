extends Node2D

@onready var cyan: Node = $"../LOGIC_NODES/Cyan"
@onready var magenta: Node = $"../LOGIC_NODES/Magenta"
@onready var yellow: Node = $"../LOGIC_NODES/Yellow"

@onready var camera: Node = $"../LOGIC_NODES/Camera"

func ChangeScreen(clickedButton: Button):
	camera.ChangeView(clickedButton.Location)
	pass

func _ready() -> void:
	camera_screen.position.y = 1080
	camera_content.visible = false

func _process(delta: float) -> void:
	queue_redraw()

func _draw() -> void:
	draw_string(ThemeDB.fallback_font, Vector2(10, 30), cyan.DebugText())
	draw_string(ThemeDB.fallback_font, Vector2(10, 50), magenta.DebugText())
	draw_string(ThemeDB.fallback_font, Vector2(10, 70), yellow.DebugText())

var cameraIsUp = false

@onready var camera_screen: Node2D = $"../CameraScreen"
@onready var camera_content: ColorRect = $"../CameraScreen/Content"

func _on_camera_toggle_mouse_entered() -> void:
	cameraIsUp = !cameraIsUp
	
	if cameraIsUp:
		var t = TweenManager.CreateTween(camera_screen)
		t.tween_property(camera_screen, "position:y", 360, 0.1)
		camera_content.visible = true
		return
	
	var t = TweenManager.CreateTween(camera_screen)
	t.tween_property(camera_screen, "position:y", 1080, 0.1)
	camera_content.visible = false
	pass # Replace with function body.
