extends Area2D


export (String) var next_level = null

func _on_Goal_body_entered(body: Node) -> void:
	if body.name == "Player":
		get_tree().change_scene(next_level)
