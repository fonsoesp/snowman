extends RigidBody2D

# Called when the node enters the scene tree for the first time.
func _ready():
	pass
	
func _on_body_entered(body):
	if body.is_in_group("PlayerBar"):
		_bounce()
	elif body.is_in_group("Enemigo"):
			print("Dead")
	elif body.is_in_group("Salida"):
			print("Salida")

func _bounce():
	set_linear_velocity(Vector2(get_linear_velocity().x,-500))
	pass
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _integrate_forces(state):
	# Detecta colisiones
	#if 
	#for i in range(get_contact_count()):
		#var contact = get_contact_collider_object(i)
		#if contact.is_in_group("platform"):  # Verifica si el cuerpo en contacto pertenece al grupo "platform"
			## Resetea la velocidad vertical y aplica la fuerza del salto
			#linear_velocity.y = 0
			#apply_central_impulse(Vector2(0, jump_force))
			#break



