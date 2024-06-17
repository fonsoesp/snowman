extends Node2D

func _process(_delta):
	var mouse_position = get_global_mouse_position()
	self.position = mouse_position
	
	
