extends Node


enum {VALLEY, DESERT}
var sprites_backgrounds: Array[CompressedTexture2D] = [preload("res://assets/background1.png"), preload("res://assets/desertBackground.png")]
var sprites_spawner: Array[CompressedTexture2D] = [preload("res://assets/appleTree1.png"), preload("res://assets/RollField.png")]

var choice = 0
