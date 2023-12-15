extends Node2D

var difficult = Data_Difficult.difficult_selected
var erros : Array
onready var vitoria_scene : PackedScene = preload("res://Scenes/VendeuOuPerdeu/Vitoria.tscn")
var winner = false
var cena_erro

func _ready():
	Data_Difficult.find_errors = 0
	cena_erro = define_image()


func _process(delta):
	if winner:
		return;
	ver_winner()
	pass


func ver_winner():
	if Data_Difficult.find_errors >= 7:
		$End_Game.stream = preload("res://Assets/Sounds/success-fanfare-trumpets-6185.mp3")
		$End_Game.play(0.0)
		winner = true
		var end_game = vitoria_scene.instance()
		add_child(end_game)


func define_image():
	var random = RandomNumberGenerator.new()
	random.randomize()
	var id_erros_image : int = random.randi_range(0, 2)
	var cena = $Erros.get_child(id_erros_image)
	cena.visible = true
	cena.set_process(true)
	cena.set_process_input(true)
	erros = cena.get_erros()
	for erro in erros:
		erro.set_process_input(true)
		erro.set_process(true)
	return cena


func _input(event):
	if event.is_pressed() and event.button_index == BUTTON_LEFT and !cena_erro.is_some_area_colliding():
		$Click.stream = preload("res://Assets/Sounds/click-button-131479.mp3")
		$Click.play(0.0)
