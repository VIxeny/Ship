extends Area2D
func _process(delta: float):
	translate(Vector2(0,-5))


func _on_timer_timeout():
	queue_free()


func _on_area_entered(area: Area2D):
	$"../Spawner".arrayx.erase(int(area.position.x))
	$"../Spawner".shipCount -= 1
	print("WWWWW"+str(area.position.x))
	area.queue_free()
	queue_free()
