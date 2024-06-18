extends StaticBody2D

const rayo = preload("res://scene/Rayo.tscn")

func _process(delta):
	var rayo = rayo.instantiate()
	get_parent().add_child(rayo)
	# Poner en la posición del sol
