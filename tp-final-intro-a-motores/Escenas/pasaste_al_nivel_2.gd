extends CanvasLayer


@onready var timer: Timer = $Timer
func _ready() -> void:
	timer.start()
	get_tree().change_scene_to_file("res://nivel_2.tscn")
	
