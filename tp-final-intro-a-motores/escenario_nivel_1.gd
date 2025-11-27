extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	GameManager.nivelActual = get_tree().current_scene.scene_file_path
	print("se guardo el nivel 1")
func _process(delta: float) -> void:
	if GameManager.score == 5:
		pasasteDeMivel()
func pasasteDeMivel():
	get_tree().change_scene_to_file("res://Escenas/pasaste_al_nivel_2.tscn")
