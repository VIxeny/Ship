extends Area2D
func _process(delta: float):
	translate(Vector2(0,3))


func _on_timer_timeout() -> void:
	queue_free()




func _on_body_entered(body: Node2D) -> void:
	body.takeDamage()
	queue_free()
