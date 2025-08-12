extends RigidBody2D
var speed = 500
var canShoot=true
var healths = 3
var appleCount = 0
var isDeath = false
@export var rocket: PackedScene

@export var deathScreen: PackedScene

func _ready():
	var arr = [1, 2, 3, 2, 4]
	arr.erase(2)  # Удаляет первую 2
	print(arr)  # [1, 3, 2, 4]
	#apply_central_impulse(Vector2(100,0))
func _process(delta: float):
	speed += delta*5
	if Input.is_key_pressed(KEY_RIGHT) and not isDeath:
		$PixelMain1.flip_h=true
		linear_velocity = Vector2(speed,0)
		#apply_central_force(Vector2(speed,0))
	elif Input.is_key_pressed(KEY_LEFT) and not isDeath:
		$PixelMain1.flip_h=false
		linear_velocity = Vector2(-speed,0)
		#apply_central_force(Vector2(-speed,0))
	else:
		linear_velocity = Vector2(0,0)
	

func appleGot():
	if isDeath == false:
		$"appleGotSound".play()
		appleCount += 1
		$"../CanvasLayer/Apples/Label".text = str(appleCount)
func appleMiss():
	if isDeath == false:
		$"appleMissSound".play()
		healths -= 1
		%Hearts.disableHeart(healths)
	if healths == 0:
		var temp=deathScreen.instantiate()
		$"..".add_child(temp)
		isDeath = true
