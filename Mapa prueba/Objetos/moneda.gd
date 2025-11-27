extends Area2D



func _on_body_entered(body):
	if body.name == "ManPac":
		GameManager.add_Score()
		#print(str(GameManager.score))
		queue_free()
		print("Tienes " + str(GameManager.score) + " Monedas")
