class_name Boss1
extends Node2D

@onready var AniBoss = $AnimationPlayer
const LanCARACOL = preload("res://Enemigos/Caracol.tscn")

func _process(delta):
	AniBoss.play("Lanza")
	
func LanzarCaracol():
	var InstCarac = LanCARACOL.instantiate()
	InstCarac.position = $SlimeBlockJump/Mano/SnailShell.position
	
	add_child(InstCarac)
