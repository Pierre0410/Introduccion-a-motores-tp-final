extends Button
func _ready() -> void:
	pressed.connect(_niveles)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _niveles():
	get_tree().change_scene_to_file("res://nivel_3.tscn")
