extends CharacterBody2D

@export var area_2d: Area2D
@export var SPEED = 300.0
var direccion: Vector2 = Vector2.ZERO
var en_movimiento = false
@export var animacion: AnimatedSprite2D  


signal personaje_muerto
signal player_se_movio(direction: Vector2)




func _ready() -> void:
	area_2d.body_entered.connect(_on_area_2d_body_entered)
	add_to_group("personajes")
	animacion.play("ManPac")
	


func _physics_process(delta: float) -> void:
	if not en_movimiento:
		verificar_input()
		
	if en_movimiento:
		var choque = move_and_collide(direccion * SPEED * delta)
		if choque:
			en_movimiento = false
			direccion = Vector2.ZERO

func verificar_input():
	if Input.is_action_just_pressed("Up"):
		direccion = Vector2.UP
		en_movimiento = true
		print("arriba")
		emit_signal("player_se_movio", direccion)
	elif Input.is_action_just_pressed("Down"):
		direccion = Vector2.DOWN
		en_movimiento = true
		print("abajo")
		emit_signal("player_se_movio", direccion)
	elif Input.is_action_just_pressed("Left"):
		direccion = Vector2.LEFT
		en_movimiento = true
		print("izquierda")
		emit_signal("player_se_movio", direccion)
	elif Input.is_action_just_pressed("Right"):
		direccion = Vector2.RIGHT
		en_movimiento = true
		print("derecha")
		emit_signal("player_se_movio", direccion)

func _on_area_2d_body_entered(body: Node2D) -> void:
	print("muerto")
	personaje_muerto.emit()
	GameManager.reiniciarMarcador()
