extends Area2D

var speedDrop

func _process(delta: float):
	translate(Vector2(0,speedDrop))

func _on_timer_timeout() -> void:
	queue_free()




func _on_body_entered(body: Node2D) -> void:
	#body.takeDamage()
	queue_free()
