extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	GameManager.nivelActual = get_tree().current_scene.scene_file_path
	print("se guardo el nivel 3")
