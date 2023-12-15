extends Node

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.



func _on_NinePatchRect2_pressed():
	get_tree().change_scene("res://levels/level1.tscn")
