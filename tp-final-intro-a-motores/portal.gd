extends Area2D





func _on_body_entered(body: Node2D) -> void:
	if GameManager.score == 167:
		get_tree().change_scene_to_file("res://nivel_3.tscn")
	else:
		print("aun no puedas pasar, recolecta todas las monedas")
