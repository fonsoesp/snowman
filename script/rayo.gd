
extends CharacterBody2D

var speed = 200
var original_position = Vector2()

# Called when the node enters the scene tree for the first time.
func _ready():
	original_position = position
	
func _physics_process(delta):
	velocity = Vector2(speed, 0)
	var collision = move_and_collide(velocity * delta)
	if collision:
		if collision.get_collider().name == "SnowMan":
			collision.get_collider()._game_over();
		else:
			_on_collision()
		
func _on_collision():
	position = original_position
