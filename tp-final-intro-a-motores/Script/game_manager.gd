extends Control

var score = 0
var nivelActual: String = ""

func _ready() -> void:
	pass
	
func add_Score():
	score = score + 1

func removeOne_Score():
	score = score - 1

func reiniciarMarcador():
	score = 0 
