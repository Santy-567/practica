class_name Caracol
extends RigidBody2D

@export var altura = 1000

func _process(delta):
	if position.y > altura:
		queue_free()
		
