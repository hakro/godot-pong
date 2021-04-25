extends KinematicBody2D

onready var particules : CPUParticles2D = $CPUParticles2D 

var vel := Vector2(1, 0.7)
var speed := 600

func _process(delta):
	
	var col : KinematicCollision2D = move_and_collide(vel * delta * speed)
	if col != null:
		particules.emitting = true
		vel = vel.bounce(col.normal)
		# Increase score
		if(col.collider.name == "LeftWall"):
			GameState.inc_right()
		if(col.collider.name == "RightWall"):
			GameState.inc_left()
