extends Area2D
var isMoving = true
@export var enemyBull: PackedScene


func _on_timer_timeout() -> void:
	isMoving = false
	$"Timer2".start()

func _process(delta: float):
	if isMoving:
		translate(Vector2(0,1.25))
