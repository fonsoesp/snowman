extends RigidBody2D

var initial_position

# Called when the node enters the scene tree for the first time.
func _ready():
	initial_position = position
	
func _on_body_entered(body):
	if body.is_in_group("Collision"):
		self.position.x = 0
		
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass#self.position.x += rayVelocity;
	#var test = JOY_AXIS_RIGHT_X
	#if self.position.x == JOY_AXIS_RIGHT_X:
		#self.position.x = 0;
