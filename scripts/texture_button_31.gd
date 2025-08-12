extends TextureButton


func _on_pressed() -> void:
	$"..".visible = false
	$"../../CanvasLayer".visible = true
