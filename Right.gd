extends KinematicBody2D

onready var ball : KinematicBody2D = get_parent().get_node("Ball")
var speed := 320
var dest := 0

func _physics_process(delta):
	dest = ball.position.y - position.y
	if dest > 0:
		move_and_collide(Vector2(0, 1) * speed * delta)
	else:
		move_and_collide(Vector2(0, -1) * speed * delta)
