extends TextureButton


func _on_pressed() -> void:
	$"..".visible = false
	$"../../CanvasLayer2".visible = true
