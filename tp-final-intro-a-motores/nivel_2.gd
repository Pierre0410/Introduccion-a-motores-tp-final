extends Node2D


func _ready():
	GameManager.nivelActual = get_tree().current_scene.scene_file_path
	print("se guardo el nivel 2")

func  _physics_process(delta):
	var posicion_del_mouse = get_global_mouse_position()
	var velocidad = delta * 100
	
	
	if Input.is_mouse_button_pressed(MOUSE_BUTTON_LEFT) and velocidad <= 50:
		get_node("Mapa/TileMapLayer").look_at(posicion_del_mouse)
