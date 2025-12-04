extends Node2D


func _ready():
	GameManager.nivelActual = get_tree().current_scene.scene_file_path
	print("se guardo el nivel 2")
"""
func  _physics_process(delta):
	var posicion_del_mouse = get_global_mouse_position()
	var velocidad = delta * 100
	
	if velocidad <= 20 :
		get_node("Mapa/TileMapLayer").look_at(posicion_del_mouse)

	"""


func _on_man_pac_personaje_muerto() -> void:
	get_tree().change_scene_to_file(GameManager.nivelActual)
	GameManager.reiniciarMarcador()
