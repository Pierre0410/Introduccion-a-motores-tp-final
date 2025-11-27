extends CharacterBody2D

@export var area_2d: Area2D
# Called when the node enters the scene tree for the first time.
@export var SPEED = 300.0
var direccion: Vector2 = Vector2.ZERO
var en_movimiento = false
#@export var JUMP_VELOCITY = -800

signal personaje_muerto


func _ready() -> void:
	area_2d.body_entered.connect(_on_area_2d_body_entered)
	add_to_group("personajes")


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
	elif Input.is_action_just_pressed("Down"):
		direccion = Vector2.DOWN
		en_movimiento = true
	elif Input.is_action_just_pressed("Left"):
		direccion = Vector2.LEFT
		en_movimiento = true
	elif Input.is_action_just_pressed("Right"):
		direccion = Vector2.RIGHT
		en_movimiento = true
	"""if not is_on_floor():
		velocity += get_gravity() * delta
	
	
		
	#if Input.is_action_just_pressed("ui_accept") and is_on_floor():
		velocity.y = JUMP_VELOCITY

	var direction := Input.get_axis("ui_left", "ui_right")
	if direction:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)

	move_and_slide()"""
	



func _on_area_2d_body_entered(body: Node2D) -> void:
	print("muerto")
	personaje_muerto.emit()
