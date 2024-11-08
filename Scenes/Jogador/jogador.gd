extends StaticBody2D

@export var jogador1 : bool 
var velocidade_do_jogador : int = 500



func _ready() -> void:
	pass 



func _process(delta: float) -> void:
	pass


func movimentar_jogador() -> void:
	if jogador1: 
		if Input.is_action_pressed("mv-cima-1"):
		pass
	
