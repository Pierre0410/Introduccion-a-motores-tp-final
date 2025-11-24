extends CharacterBody2D

@export var area_2d: Area2D
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	area_2d.body_entered.connect(_on_area_2d_body_entered)



func _on_area_2d_body_entered(body: Node2D) -> void:
	print("muerto")
