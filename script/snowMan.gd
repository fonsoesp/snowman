extends RigidBody2D

@export var game_over_label : Label
@export var reset_delay = 2.0

# Called when the node enters the scene tree for the first time.
func _ready():
	pass
	
func _on_body_entered(body):
	if body.is_in_group("PlayerBar"):
		_bounce()
	elif body.is_in_group("Enemigo"):
		_game_over()
		print("Dead")
	elif body.is_in_group("Salida"):
		print("Salida")

func _bounce():
	set_linear_velocity(Vector2(get_linear_velocity().x,-500))
	pass
	
func _game_over():
	# Mostrar el mensaje de Game Over
	
	# Esperar unos segundos y luego resetear el nivel
	var timer = Timer.new()
	timer.wait_time = reset_delay
	timer.one_shot = true
	add_child(timer)
	timer.timeout.connect(_reset_level)
	timer.start()

func _reset_level():
	get_tree().reload_current_scene()
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



