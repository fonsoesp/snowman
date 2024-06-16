extends CollisionShape2D

# Called when the node enters the scene tree for the first time.
func _ready():
	self.connect("body_entered", Callable(self, "_on_body_entered"))

func _on_body_entered(body):
	if body is RigidBody2D: # Si choca snowman con él
		#GAME OVER
		print("GAME OVER")
		$snowmanSprite.visible = false

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass
