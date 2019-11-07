extends Node2D

var finished = false

func _on_Area2D_body_entered(body):
	if body.is_in_group("PLAYER"):
		finished = true
		#DO STUFF
