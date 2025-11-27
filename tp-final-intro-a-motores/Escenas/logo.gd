extends Node


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass

func _input(event):
	if event.is_action_pressed("SPACE"):
		get_tree().change_scene_to_file("res://MenuPrincipal/menu_principal.tscn")
