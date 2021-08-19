extends StaticBody2D

func _process(delta: float) -> void:
	if Global.door_open == true:
		$AnimatedSprite.play('opening')
		if $AnimatedSprite.get_frame() == 19:
			$CollisionShape2D.disabled = true
