extends Node


func _input(event: InputEvent) -> void :
	if Input.is_action_just_pressed("pausa"):
		if get_tree().paused:
			visble = false
			get_tree().paused = false
		else:
			visible = true
			get_tree().paused = true
		#get_tree().change_scene_to_file("res://Escenas/menu_de_pausa.tscn")
		

		
