extends RigidBody2D

@export var reset_delay = 2.0
var dead = false;

# Called when the node enters the scene tree for the first time.
func _ready():
	pass
	
func _on_body_entered(body):
	if body.is_in_group("PlayerBar"):
		_bounce()
	elif body.is_in_group("Enemigo"):
		if !dead:
			_game_over()
	elif body.is_in_group("Salida"):
		_win()

func _bounce():
	set_linear_velocity(Vector2(get_linear_velocity().x,-500))
	pass
	
func _game_over():
	$"../GameOverLabel".visible = true
	dead = true
	$Sprite2D/AnimationPlayer.play("death")
	setTimer()
	
func setTimer():
	var timer = Timer.new()
	timer.wait_time = reset_delay
	timer.one_shot = true
	add_child(timer)
	timer.timeout.connect(_reset_level)
	timer.start()

func _win():
	$"../WinLabel".visible = true;
	setTimer()

func _reset_level():
	get_tree().reload_current_scene()
