extends CanvasLayer

func _process(delta: float) -> void:
	$Control/Score.text = "Score: " + str(Global.score)
