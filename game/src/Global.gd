extends Node

var enable_movement = true
var door_open = false
var switch1 = false

func _process(delta: float) -> void:
	if switch1 == true:
		door_open = true
