extends Control




func _on_Play_pressed() -> void:
	get_tree().change_scene("res://src/Levels/Level1/Level1.tscn")


func _on_Quit_pressed() -> void:
	get_tree().notification(MainLoop.NOTIFICATION_WM_QUIT_REQUEST)
