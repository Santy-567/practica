extends Camera2D

@export var person:Node2D

func _process(delta):
	if person != null:
		position = person.position
	
	
func _physics_process(delta):
	pass
