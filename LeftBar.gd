extends KinematicBody2D

var speed := 350

func _physics_process(delta):
	if Input.is_action_pressed("ui_up"):
		move_and_collide(Vector2(0, -speed) * delta)
	elif Input.is_action_pressed("ui_down"):
		move_and_collide(Vector2(0, speed) * delta)
