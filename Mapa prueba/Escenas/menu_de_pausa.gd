extends Control




func _on_menu_pressed() -> void:
	get_tree().change_scene_to_file("res://MenuPrincipal/menu_principal.tscn")


func _on_salir_del_juego_pressed() -> void:
	get_tree().change_scene_to_file("res://EscenarioNivel1.tscn")
