class_name Personaje
extends CharacterBody2D

@export var gravity = 250
@export var jump = 250
@export var speed = 100

func _physics_process(delta):
	
	#Saltar
	if is_on_floor():
		var Salto = Input.is_action_just_pressed("Arriba")
		if Salto:
			velocity.y = velocity.y - jump
	
	#Mover Horizontal
	var Movi = Input.get_axis("Izquierda","Derecha")
	velocity.x = speed * Movi
	
	#Gravedad
	if not is_on_floor():
		velocity.y = velocity.y + gravity * delta
		
	move_and_slide()
