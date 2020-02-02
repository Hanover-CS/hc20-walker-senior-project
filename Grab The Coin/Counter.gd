extends Label


var count = 0 

var bodies  = $Area2D.get_overlapping_bodies()

func update_counter():
	for body in bodies:
		if body.name == "coin":
			increment()

func increment():
	set('count', count+1)
	set_text(str(count) + "/10 coins")