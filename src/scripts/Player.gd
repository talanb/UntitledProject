extends Node2D

var motion = Vector2()
var player_speed = 250

func _process(delta):

	if Input.is_action_pressed("player_up") and !Input.is_action_pressed("player_down"):
		motion.y = -1
	elif Input.is_action_pressed("player_down") and !Input.is_action_pressed("player_up"):
		motion.y = 1
	else:
		motion.y = 0
	if Input.is_action_pressed("player_left") and !Input.is_action_pressed("player_right"):
		motion.x = -1
	elif Input.is_action_pressed("player_right") and !Input.is_action_pressed("player_left"):
		motion.x = 1
	else:
		motion.x = 0

	self.position += motion * player_speed * delta