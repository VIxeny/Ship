extends RigidBody2D
var speed = 1000
var canShoot=true
var bulletNum = 0
@export var rocket: PackedScene

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
	if Input.is_key_pressed(KEY_SPACE) and canShoot:
		bulletNum += 1
		canShoot = false
		$"Timer".start()
		var temp = rocket.instantiate()
		if bulletNum % 2 == 0:
			temp.position=Vector2(600, 546)
		else:
			temp.position=Vector2(500, 546)
		$"..".add_child(temp)


func _on_timer_timeout() -> void:
	canShoot = true
