extends Area2D

signal life_changed(player_hears)

var max_hearts: int = 3
var hearts: float = max_hearts

var canos: Array

var larry = load("res://levels/Area2D.gd").new()

var respostas = load("res://respostas.gd").new()


func _ready():
	pass # Replace with function body.


func tentar_solucao():
#	var respostas = get_node("Level1").respostas_level1
#	print(respostas)

	# compara o dict de canos + valores esperados com o nó da chave (cano) e o valor atual
#	$respostas.respos
	if not valid_solution():
		hearts -= 0.5
		emit_signal("life_changed", hearts)
		if hearts <= 0:
			return game_over()
	else:
		return vitoria()


func vitoria():
#	larry.andar()
	var current_scene_file = get_tree().current_scene.filename
	var next_level_number = current_scene_file.to_int() + 1
	if next_level_number != 4:
		var next_level_path = "res://levels/level" + str(next_level_number) + ".tscn"
		yield(get_tree().create_timer(4.489), "timeout")
		return get_tree().change_scene(next_level_path)
	yield(get_tree().create_timer(3.7), "timeout")
	return get_tree().change_scene("res://levels/vitoria.tscn")
		

#func _process(delta):
#	pass

func game_over():
	return get_tree().change_scene("res://levels/Derrota.tscn")


func valid_solution():
	var nivel_atual = get_tree().current_scene.filename.to_int()
#	var aux = "respostas_level" + str(nivel_atual) + "()"
#	var resposta_atual = respostas.aux
	
	var is_valid = true
	return is_valid


func _on_trigger_button_pressed():
	tentar_solucao()
