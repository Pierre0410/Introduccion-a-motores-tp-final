extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func  _physics_process(delta) -> void:
	var posicion_del_mouse = get_global_mouse_position()
	var velocidad = delta * 100
	
	if velocidad <= 30 :
		get_node("Mapa/TileMapLayer").look_at(posicion_del_mouse)

	
