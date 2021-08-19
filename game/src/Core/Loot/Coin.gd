extends Area2D

func _on_Coin_body_shape_entered(body_id: int, body: Node, body_shape: int, local_shape: int) -> void:
	if body.name == "Player":
		print("COIN!")
		Global.score += 5
		Global.coins_found += 1
		self.queue_free()
