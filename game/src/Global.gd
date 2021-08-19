extends Node

var enable_movement = true
var door_open = false
var switch1 = false
var score = 0
var coins_found = 0
var total_coins = 0

func _ready():
	total_coins = get_tree().get_nodes_in_group("coins").size()

func _process(delta: float) -> void:
	if switch1 == true:
		door_open = true
