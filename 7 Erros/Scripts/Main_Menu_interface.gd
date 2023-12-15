extends Node2D


export var scene_pintor : PackedScene = load("res://Scenes/Scenes_Pintor/Cena_Pintor.tscn")
export var scene_borboleta : PackedScene = load("res://Scenes/Scenes_Borboleta/Cena_Borboleta.tscn")
export var scene_girafa : PackedScene = load("res://Scenes/Scenes_Girafa/Cena_Girafa.tscn")
export var scene_passarinho : PackedScene = load("res://Scenes/Scenes_Passarinho/Cena_Passarinho.tscn")
onready var difficults = get_child(2)


func _ready():
	Data_Difficult.find_errors = 0


func _on_Button_Pintor_pressed():
	Data_Difficult.difficult_selected = difficults.who_is_pressed
	get_tree().change_scene_to(scene_pintor)


func _on_Button_Passarinho_pressed():
	Data_Difficult.difficult_selected = difficults.who_is_pressed
	get_tree().change_scene_to(scene_passarinho)


func _on_Button_Girafa_pressed():
	Data_Difficult.difficult_selected = difficults.who_is_pressed
	get_tree().change_scene_to(scene_girafa)


func _on_Button_Borboleta_pressed():
	Data_Difficult.difficult_selected = difficults.who_is_pressed
	get_tree().change_scene_to(scene_borboleta)


func _input(event):
	if event.is_pressed() and event.button_index == BUTTON_LEFT:
		$Click.stream = preload("res://Assets/Sounds/click-button-131479.mp3")
		$Click.play(0.0)

