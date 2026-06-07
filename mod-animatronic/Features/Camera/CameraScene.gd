@tool
class_name CameraScene extends Node

enum Locations {FRONT, STORE, LOUNGE, WH1, WH2, CORNERL, CORNERR, OFFICE, BLACK, BACK}

@export var Location: Locations
@export_tool_button("Preview") var PreviewTestButton = PreviewScene

func PreviewScene():
	pass
