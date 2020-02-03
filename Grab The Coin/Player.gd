extends KinematicBody2D

var motion = Vector2()
#contains x and y in a single variable

const GRAVITY = 20
#falling speed
const ACCELERATION = 50
const MAX_SPEED = 200
#horizontal speed
const JUMP_HEIGHT = -500
#max jump height
const UP = Vector2(0, -1)

const DEATH = 2000

func _physics_process(delta):
	var FRICTION = false
	motion.y += GRAVITY
	
	if Input.is_action_pressed("ui_right"):
		move_right()
	elif Input.is_action_pressed("ui_left"):
		move_left()
	else:
		await_input()
		FRICTION = true
		
	if is_on_floor():
		if Input.is_action_just_pressed("ui_up"):
			motion.y = JUMP_HEIGHT
		if FRICTION == true:
			motion.x = lerp(motion.x, 0, 0.2)
			
	else:
		jump()
		if FRICTION == true:
			motion.x = lerp(motion.x, 0, 0.05)

	motion = move_and_slide(motion, UP)
	
func death():
	if motion.y > DEATH:
		get_tree().reload_current_scene()

func move_right():
	motion.x = min(motion.x+ACCELERATION, MAX_SPEED)
	$Sprite.flip_h = false
	$Sprite.play("run")
	
func move_left():
	motion.x = max(motion.x-ACCELERATION, -MAX_SPEED)
	$Sprite.flip_h = true
	$Sprite.play("run")
	
func await_input():
	motion.x = lerp(motion.x, 0, 0.2)
	$Sprite.play("idle")
	
func jump():
	if motion.y < 0:
		$Sprite.play("jump")
	else:
		$Sprite.play("fall")