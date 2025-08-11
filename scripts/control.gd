extends Control
@export var arrayH: Array[TextureRect]

func disableHeart(amount):
	arrayH[amount].visible = false
	
