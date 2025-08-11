extends Node

var arrayx = []
@export var enemyShip: PackedScene


func _on_timer_timeout():
	var canSpawn = false
	var randomx
	print(len(arrayx))
	if len(arrayx) == 0:
		randomx = randi_range(50, 800)
		canSpawn = true
	else:
		for i in range(3):
			canSpawn = true
			randomx = randi_range(50, 800)
			for j in arrayx:
				if randomx > j - 205 and randomx < j + 205:
					canSpawn = false
					print("AHTUNG")
					break
				
				
			if canSpawn:
				break
	
		
	if canSpawn:
		var temp = enemyShip.instantiate()
		temp.position=Vector2(randomx, -100)
		$"..".add_child(temp)
		arrayx.append(randomx)
		print(arrayx)
