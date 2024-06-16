extends CharacterBody2D

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	var mouse_position = get_global_mouse_position()
	self.position = mouse_position
