extends RigidBody2D
var speed = 1000
var canShoot=true
var bulletNum = 0
var healths = 3
@export var rocket: PackedScene

@export var deathScreen: PackedScene

func _ready():
	var arr = [1, 2, 3, 2, 4]
	arr.erase(2)  # Удаляет первую 2
	print(arr)  # [1, 3, 2, 4]
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
			temp.position=Vector2(90, 0)+position
		else:
			temp.position=Vector2(-90, 0)+position
		$"..".add_child(temp)


func _on_timer_timeout() -> void:
	canShoot = true

func takeDamage():
	healths -= 1
	%Hearts.disableHeart(healths)
	if healths == 0:
		var temp = deathScreen.instantiate()
		$"..".add_child(temp)
		
