extends CharacterBody2D

var velocidad := 175
var direccion: Vector2 = Vector2.ZERO
var en_movimiento := false
var haciaDerecha = false

@export var animacion: AnimatedSprite2D
@onready var timer: Timer = $MovimientoTimer

func _ready():
	animacion.play("default")
	timer.start()
	timer.connect("timeout", Callable(self, "_on_mover_timer_timeout"))


func _physics_process(delta):
	if  en_movimiento:
		timer.stop()
		var choque = move_and_collide(direccion * velocidad * delta)
		if  choque:
			en_movimiento = false
			#direccion = Vector2.ZERO
			# Reiniciar el timer cuando choca
			timer.start()


func _on_mover_timer_timeout():
	if haciaDerecha: 
		direccion = Vector2.LEFT
		animacion.flip_h = true
	else:
		direccion = Vector2.RIGHT
		animacion.flip_h = false
	
	en_movimiento = true
	haciaDerecha = !haciaDerecha
	
	
