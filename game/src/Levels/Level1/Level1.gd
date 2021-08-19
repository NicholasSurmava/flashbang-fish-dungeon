extends Node


onready var player = $Player
onready var player_camera = $Player/Camera2D


func _ready():
	Global.enable_movement = false
	

func _process(delta: float) -> void:
	if Global.enable_movement == false:
		if $Player.is_on_floor():
			Global.enable_movement = true
			player_camera.current = true
			
