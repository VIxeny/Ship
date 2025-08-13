extends Node

func _ready() -> void:
	YandexSDK.init_game()

func _on_timer_timeout() -> void:
	YandexSDK.game_ready()
	YandexSDK.show_interstitial_ad()
