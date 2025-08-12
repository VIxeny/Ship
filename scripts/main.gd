extends Node

func _ready() -> void:
	YandexSDK.gameplay_started()
	
	get_viewport().focus_entered.connect(_focus_in)
	get_viewport().focus_exited.connect(_focus_out)
	
func _focus_in():
	YandexSDK.gameplay_started()
func _focus_out():
	YandexSDK.gameplay_stopped()
