extends CollisionShape2D

signal body_entered(body)
signal body_exited(body)

func _ready():
	var area = Area2D.new()
	add_child(area)

	var collision_shape = CollisionShape2D.new()
	collision_shape.shape = shape
	area.add_child(collision_shape)

	area.connect("body_entered", Callable(self, "_on_body_entered"))
	area.connect("body_exited", Callable(self, "_on_body_exited"))
	area.monitoring = true
	area.monitorable = true

func _on_body_entered(body):
	if body is RigidBody2D:
		body.set_physics_material_override(null)

func _on_body_exited(body):
	if body is RigidBody2D:
		var new_material = PhysicsMaterial.new()
		new_material.bounce = 0.5
		body.set_physics_material_override(new_material)
