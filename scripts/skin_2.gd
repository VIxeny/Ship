extends TextureButton


func _on_pressed() -> void:
	WebBus.show_ad()
	Skins.choice = Skins.DESERT
