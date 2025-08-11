extends Node
var dificultyTime = 0
var arrayx = []
var shipCount = 1
@export var appleDrop: PackedScene
@export var curve: Curve

func _process(delta: float):
	dificultyTime += delta
	#if dificultyTime >= 30:
		#$"Timer".wait_time = 

func _on_timer_timeout():
	var spawnRandom = randi_range(0, 7)
	var temp = appleDrop.instantiate()
	temp.position = Vector2(100, 100)+Vector2(spawnRandom*160, 0)
	temp.speedDrop = 1.5 + dificultyTime*0.02
	$"..".add_child(temp)
	print('1')
