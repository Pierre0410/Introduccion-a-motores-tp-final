extends CharacterBody2D

@export var area_2d: Area2D
# Called when the node enters the scene tree for the first time.
@export var SPEED = 300.0
@export var JUMP_VELOCITY = -800


func _physics_process(delta: float) -> void:
	if not is_on_floor():
		velocity += get_gravity() * delta

	if Input.is_action_just_pressed("ui_accept") and is_on_floor():
		velocity.y = JUMP_VELOCITY

	var direction := Input.get_axis("ui_left", "ui_right")
	if direction:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)

	move_and_slide()
	

func _ready() -> void:
	area_2d.body_entered.connect(_on_area_2d_body_entered)



func _on_area_2d_body_entered(body: Node2D) -> void:
	print("muerto")
