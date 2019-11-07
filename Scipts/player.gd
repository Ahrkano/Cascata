extends KinematicBody2D

export var moviment_speed = 12000
export var gravity = 600
const UP = Vector2(0,-1)
var move = Vector2()
var delta = 0

func _process(delta):
	self.delta = delta
	move.y += gravity*delta
	
	if Input.is_action_pressed("ui_left"):
		$anim.flip_h = true
		$anim.animation = 'walk'
		move.x = -moviment_speed * self.delta
	elif Input.is_action_pressed("ui_right"):
		$anim.flip_h = false
		$anim.animation = 'walk'
		move.x = moviment_speed * self.delta
	else :
		$anim.animation = 'idle'
		move.x = 0
		
	move = move_and_slide(move, UP)