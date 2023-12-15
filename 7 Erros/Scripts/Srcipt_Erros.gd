extends Sprite

var array_erros : Array = []
var is_area_colliding = false

func _ready():
	for erro in get_children():
		array_erros.append(erro)


func _process(_delta):
	is_area_colliding = false
	pass


func get_erros() -> Array:
	return array_erros

func is_some_area_colliding():
	for erro in array_erros:
		if erro.mouse_in_area:
			is_area_colliding = true
			return is_area_colliding
	
	return false
