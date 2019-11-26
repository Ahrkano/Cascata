extends Area2D

func _on_next_body_entered(body):
		return get_tree().change_scene("res://Scenes/End.tscn")
