extends TextureButton
@export var on: CompressedTexture2D
@export var off: CompressedTexture2D

func _on_pressed() -> void:
	if AudioServer.get_bus_volume_db(0)==0:
		print("11")
		texture_normal = off
		AudioServer.set_bus_volume_db(AudioServer.get_bus_index("Master"), -80.0)
	else:
		print("00")
		texture_normal = on
		AudioServer.set_bus_volume_db(AudioServer.get_bus_index("Master"), 0.0)
func _ready() -> void:
	if AudioServer.get_bus_volume_db(0)==-80:
		texture_normal = off
	
