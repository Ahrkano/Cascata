extends KinematicBody2D

export var movement_speed = 12000
export var gravity = 600
const UP = Vector2(0,-1)
var move = Vector2()
var delta = 0

onready var display = $Display

func _process(delta):
	self.delta = delta
	move.y += gravity*delta
	
	if Input.is_action_pressed("ui_left"):
		$anim.flip_h = true
		$anim.animation = 'walk'
		move.x = -movement_speed * self.delta
	elif Input.is_action_pressed("ui_right"):
		$anim.flip_h = false
		$anim.animation = 'walk'
		move.x = movement_speed * self.delta
	else :
		$anim.animation = 'idle'
		move.x = 0
	
	display.update_score(global.water)
	move = move_and_slide(move, UP)