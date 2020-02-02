extends Label


var count = 0 setget _set_count
#var bodies = Area2D.get_overlapping_bodies()

#func _physics_process(delta):
	#var bodies  = preload("Area2D").get_overlapping_bodies()
	
#_set_text("coins: " + count) 

func _set_count(what):
    if what==count:return
    what = count
    set_text(str(count))

func increment():
	set('count', count+1)
	set_text(str(count))

func update_counter():
	increment()
	
#var bodies = get_overlapping_bodies()
#for body in bodies:
#	if body.name == "player":