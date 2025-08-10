extends RigidBody2D
var speed = 1000
func _ready():
	pass
	#apply_central_impulse(Vector2(100,0))
func _process(delta: float):
	if Input.is_key_pressed(KEY_RIGHT):
		linear_velocity = Vector2(speed,0)
		#apply_central_force(Vector2(speed,0))
	elif Input.is_key_pressed(KEY_LEFT):
		linear_velocity = Vector2(-speed,0)
		#apply_central_force(Vector2(-speed,0))
	else:
		linear_velocity = Vector2(0,0)
