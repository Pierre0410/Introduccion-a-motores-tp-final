extends Button

@export var primerNivel: PackedScene
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pressed.connect(_jugar)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _jugar():
	get_tree().change_scene_to_packed(primerNivel)
