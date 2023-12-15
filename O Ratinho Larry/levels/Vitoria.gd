extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

func _process(delta):
#	var x = set_text("Parabéns!!!")
	pass

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Home_pressed():
	get_tree().change_scene("res://levels/TitleScreen.tscn")
