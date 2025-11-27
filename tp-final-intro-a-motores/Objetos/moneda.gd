extends Area2D

@export var reproductor:AudioStreamPlayer2D

func _on_body_entered(body):
	if body.name == "ManPac":
		GameManager.add_Score()
		reproductor.reparent(get_parent())
		reproductor.play()
		#print(str(GameManager.score))
		queue_free()
		print("Tienes " + str(GameManager.score) + " Monedas")
