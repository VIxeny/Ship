extends Area2D
var isMoving = true
@export var enemyBull: PackedScene


func _on_timer_timeout() -> void:
	isMoving = false
	$"Timer2".start()

func _process(delta: float):
	if isMoving:
		translate(Vector2(0,1.25))


func _on_timer_2_timeout() -> void:
	var temp = enemyBull.instantiate()
	temp.position=Vector2(0, 100)+position
	$"..".add_child(temp)
