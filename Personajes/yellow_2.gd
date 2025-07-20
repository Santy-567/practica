class_name Personaje2
extends CharacterBody2D

@export var speed = 200

func _physics_process(delta):
	
	#Mover Horizontal
	var Movix = Input.get_axis("Izquierda","Derecha")
	velocity.x = speed * Movix
	
	#Mover Verical
	var Moviy = Input.get_axis("Arriba","Abajo")
	velocity.y = speed * Moviy
	
	move_and_slide()
