extends Camera2D


func _process(delta: float) -> void:
	var window_size = get_viewport_rect().size
	
	var target_size = Vector2(1280, 720)
	
	var zoom_x = window_size.x / target_size.x
	var zoom_y = window_size.y / target_size.y
	
	if zoom_x <= zoom_y:
		zoom = Vector2(zoom_x, zoom_x)
	else:
		zoom = Vector2(zoom_y, zoom_y)
