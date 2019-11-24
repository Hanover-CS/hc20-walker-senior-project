extends "res://addons/gut/test.gd";

const testPlayer = preload("res://Player.gd")
onready var test_player = testPlayer.new()

func before_each():
	gut.p("ran setup", 2)

func after_each():
	gut.p("ran teardown", 2)

func before_all():
	gut.p("ran run setup", 2)

func after_all():
	gut.p("ran run teardown", 2)

#func test_assert_eq_number_not_equal():
#	assert_eq(1, 2, "Should fail.  1 != 2")

#func test_assert_eq_number_equal():
#	assert_eq('asdf', 'asdf', "Should pass")

#func test_assert_true_with_true():
#	assert_true(true, "Should pass, true is true")
	
func test_movement():
	var right = Input.is_action_pressed("ui_right")
	assert_eq(right, Input.is_action_pressed("ui_right"))
	while right:
		assert_eq(test_player.motion.x, min(test_player.motion.x+test_player.ACCELERATION, 
		test_player.MAX_SPEED))
		
func test_movement2():
	var left = Input.is_action_pressed("ui_left")
	assert_eq(left, Input.is_action_pressed("ui_left"))
	while left:
		assert_eq(test_player.motion.x, min(test_player.motion.x-test_player.ACCELERATION, 
		-test_player.MAX_SPEED))
		
func test_movement3():
	var jump = Input.is_action_pressed("ui_up")
	assert_eq(jump, Input.is_action_pressed("ui_up"))
	while jump:
		assert_eq(test_player.motion.y, test_player.JUMP_HEIGHT)