extends Node2D
# 0: deitado; 90: em pé;
# 180 = 0; 270 = 90; 360 = 0; + = -

func converte_orientacao(respostas):
	for i in range(0, respostas.size()):
		if respostas[i] == 90 || respostas[i] == -90:
			respostas[i] = 1
		if respostas[i] == 180 || respostas[i] == -180:
			respostas[i] = 0
		if respostas[i] == 270 || respostas[i] == -270:
			respostas[i] = 1
		if respostas[i] == 360 || respostas[i] == -360:
			respostas[i] = 0


# 180 0 270 90
func respostas_level1():
	# ou manda o array chumbado ou define a resposta por cano
	
	# resposta de 1 a 4 ou direto os angulos
#	var respostas = [1,1,1,1] # numero
#	var arr = [0,0,90,90] # angulos // 0: deitado; 90: em pé; 180 = 0; 270 = 90; 360 = 0; + = -
	var arr = [-180,0,270,90] 
	var conv = converte_orientacao(arr)
	var respostas = {
		"CanoReto": conv[0],
		"CanoL": conv[1],
		"CanoReto2": conv[2],
		"CanoReto4": conv[3]
	}
	
	return respostas


# 0 0 90 180 0 90
func respostas_level2():
	var arr = [0,90,180,0,90]
	var conv = converte_orientacao(arr)
	var respostas ={
		"CanoL": conv[0],
		"CanoL2": conv[1],
		"CanoL4": conv[2],
		"CanoL5": conv[3],
		"CanoReto": conv[4]
	}
	return respostas



func respostas_level3():
	var arr = [180,0,-90,90]
	var conv = converte_orientacao(arr)
	var respostas = {
		"CanoL": conv[0],
		"CanoL2": conv[1],
		"CanoL3": conv[2],
		"CanoL4": conv[3],
	}
	return respostas
 

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


func _on_Home_pressed():
	get_tree().change_scene("res://levels/TitleScreen.tscn")
