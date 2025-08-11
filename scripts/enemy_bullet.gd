extends Area2D

var speedDrop


func _process(delta: float):
	translate(Vector2(0,speedDrop))






func _on_body_entered(body: Node2D) -> void:
	if body is RigidBody2D:
		body.appleGot()
		
	else:
		$"../player".appleMiss()
	queue_free()
