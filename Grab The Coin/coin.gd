extends Area2D

func _physics_process(delta):
	$Sprite.play("Idle")
	
	var bodies = get_overlapping_bodies()
	var counter = preload("res://Counter.gd") 
	
	for body in bodies:
		if body.name == "player":
			#print(acc)
			queue_free()