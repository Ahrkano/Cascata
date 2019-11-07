extends Node2D

onready var dialogue = $DialogueUI
var finished = false

func _on_Area2D_body_entered(body):
	if body.is_in_group("PLAYER") and !finished:
		finished = true
		dialogue.StartDialogue()
