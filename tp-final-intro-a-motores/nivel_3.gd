extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	GameManager.nivelActual = get_tree().current_scene.scene_file_path
	print("se guardo el nivel 3")


func _on_man_pac_personaje_muerto() -> void:
	get_tree().change_scene_to_file(GameManager.nivelActual)
	GameManager.reiniciarMarcador()
