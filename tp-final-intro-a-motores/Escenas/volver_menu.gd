extends Button

func _ready() -> void:
	pressed.connect(_jugar)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _jugar():
	get_tree().change_scene_to_file("res://MenuPrincipal/menu_principal.tscn")
