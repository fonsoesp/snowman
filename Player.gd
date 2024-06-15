extends CharacterBody2D

@export var gravity = 500
@export var push_force = 300

func _physics_process(delta):
	var aux = velocity
	# Aplicar gravedad
	var collision = move_and_collide(velocity * delta)
	if collision:
		print("I collided with ", collision.get_collider().name)
	else:
		velocity.y += gravity * delta
		
	
	

func apply_push(direction: Vector2):
	# Aplicar fuerza de empuje
	velocity = direction.normalized()
	
func is_colliding_with_lava():
	for i in range(get_slide_collision_count()):
		var collision = get_slide_collision(i)
		if collision.collider.name == "Lava":
			return true
	return false

func handle_lava_collision():
	# Manejar la colisión con la lava (por ejemplo, reiniciar el nivel)
	print("Colisión con la lava")
	get_tree().reload_current_scene()
	
