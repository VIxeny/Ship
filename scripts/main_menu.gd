extends Node

func _ready() -> void:
	YandexSDK.init_game()
	YandexSDK.game_ready()
	YandexSDK.show_interstitial_ad()
