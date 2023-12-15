extends Control


func _on_JogarButton_pressed():
	get_tree().change_scene("res://levels/Dialog_player.tscn")


func _on_Button_pressed():
	get_tree().change_scene("res://levels/CreditosScreen.tscn")
