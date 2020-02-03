extends Area2D

const Counter = preload("res://Counter.gd")
onready var counter = Counter.new()


func _physics_process(delta):
	$Sprite.play("Idle")
	
	var bodies = get_overlapping_bodies()
	for body in bodies:
		if body.name == "player":
			counter.update_counter(bodies)
			queue_free()