extends Control

func _ready() -> void:
	$Score.text = "Score: " + str(Global.score)
	$CoinsFound.text = str(Global.coins_found) + "/" + str(Global.total_coins) + " coins found!"
