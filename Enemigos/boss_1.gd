class_name Boss1
extends Node2D

@onready var AniBoss = $AnimationPlayer
const LanCARACOL = preload("res://Enemigos/Caracol.tscn")
	
func LanzarCaracol():
	var InstCarac = LanCARACOL.instantiate()
	InstCarac.position = $SlimeBlockJump/Mano/SnailShell.position
	
	add_child(InstCarac)
	
	AniBoss.play("Reposo")


func _on_timer_timeout():
	AniBoss.play("Lanza")
	$Timer.wait_time = randf_range(2,5)
