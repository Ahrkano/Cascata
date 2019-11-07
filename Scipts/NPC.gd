extends Node2D

export(String, FILE, "*.json") var npc_dialogue
onready var dialogue = $DialogueUI
var finished = false

func _ready():
	dialogue.dialog_path = npc_dialogue
	dialogue.NPC_ready()


func _on_Area2D_body_entered(body):
	if body.is_in_group("PLAYER") and !finished:
		finished = true
		dialogue.StartDialogue()
