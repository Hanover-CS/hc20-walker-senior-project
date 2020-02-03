tool
extends Label

var count = 0 

const Utils = preload("res://Utils.gd")
onready var utils = Utils.new()

func update_counter(bodies):
	for body in bodies:
		if body.name == "player":
			increment()

func increment():
	print(count)
	#set('count', count+1)
	count+=1
	print(count)
	Label.text = str(count) 
	print(text)
	#set('text', str(count))