extends KinematicBody2D

var motion = Vector2()
#contains x and y in a single variable
const GRAVITY = 20
#falling speed
const SPEED = 200
#horizontal speed
const JUMP_HEIGHT = -500
#max jump height
const UP = Vector2(0, -1)

func _physics_process(delta):
	motion.y += GRAVITY
	
	if Input.is_action_pressed("ui_right"):
		motion.x = SPEED
	elif Input.is_action_pressed("ui_left"):
		motion.x = -SPEED
	else:
		motion.x = 0
	if is_on_floor():
		if Input.is_action_just_pressed("ui_up"):
			motion.y = JUMP_HEIGHT
		
	
	motion = move_and_slide(motion, UP)
	#pass
	# perhaps plan on having an ai control the player for a demo
# When you want to add something to the resource file, go to Documents.