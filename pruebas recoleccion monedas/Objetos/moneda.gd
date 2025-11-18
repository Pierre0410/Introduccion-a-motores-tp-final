extends Area2D
signal moneda_recogida
signal sacarVida

func _on_moneda_enviar_señal() -> void:
	pass


func _on_body_entered(body):
	if body.name == "Player":
		GameManager.add_Score()
		queue_free()
		#emit_signal("moneda_recogida")
		print("Se envio la señal moneda recogida")
