extends Node


onready var player = $Player
onready var player_camera = $Player/Camera2D


func _ready():
	print(Global.door_open)
	print(str(Global.switch1) + " " + str(Global.switch2))
	Global.enable_movement = false
	
	Global.total_coins += get_tree().get_nodes_in_group("coins").size()
	print(Global.total_coins)
	

func _process(delta: float) -> void:
	if Global.enable_movement == false:
		if $Player.is_on_floor():
			Global.enable_movement = true
			player_camera.current = true
			
	if Global.switch1 == true and Global.switch2 == true:
		Global.door_open = true
			
