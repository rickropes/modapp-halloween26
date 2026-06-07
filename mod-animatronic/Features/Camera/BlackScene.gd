@tool
extends CameraScene

@export var Stage = 0

const B_1 = preload("uid://b45016e0b6eow")
const B_2 = preload("uid://vr0jflnc8ugb")
const B_3 = preload("uid://vlx7dyhcj6tj")
const B_4 = preload("uid://bft4s2fb6ld1a")
const B_5 = preload("uid://cfpeldidj25xd")

func PreviewScene():
	$"../../CameraScreen/Char1".texture = null
	$"../../CameraScreen/Char2".texture = null
	$"../../CameraScreen/Char3".texture = null
	match Stage:
		0:
			$"../../CameraScreen/BG".texture = B_1
		1:
			$"../../CameraScreen/BG".texture = B_2
		2:
			$"../../CameraScreen/BG".texture = B_3
		3:
			$"../../CameraScreen/BG".texture = B_4
		4:
			$"../../CameraScreen/BG".texture = B_5
	pass
