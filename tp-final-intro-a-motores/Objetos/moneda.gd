extends Area2D



func _on_body_entered(body):
	if body.name == "Player":
		GameManager.add_Score()
		print(str(GameManager.score))
		queue_free()
		print("Se recogio " + str(GameManager.score))
