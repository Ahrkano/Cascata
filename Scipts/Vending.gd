extends 'res://Scipts/NPC.gd'

func _on_Area2D_body_entered(body):
	if body.is_in_group("PLAYER"):
		pass

func _on_Area2D_body_exited(body):
	if body.is_in_group("PLAYER"):
		pass