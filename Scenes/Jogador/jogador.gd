extends StaticBody2D

@export var jogador1 : bool 
var velocidade_do_jogador : int = 500



func _ready() -> void:
	pass 



func _process(delta: float) -> void:
	movimentar_jogador(delta)
	limitar_movimento_do_jogador()

func movimentar_jogador(delta : float) -> void:
#movimento do jogador 1
	if jogador1: 
		if Input.is_action_pressed("mv-cima-1"):
			position.y -= velocidade_do_jogador * delta
		elif Input.is_action_pressed("mv-baixo-1"):
			position.y += velocidade_do_jogador * delta
	
	#movimento do jogador 2
	else:
		if Input.is_action_pressed("mv-cima-2"):
			position.y -= velocidade_do_jogador * delta
		elif Input.is_action_pressed("mv-baixo-2"):
			position.y += velocidade_do_jogador * delta


func limitar_movimento_do_jogador() -> void:
	#limitação do jogador na tela
	position.y = clamp(position.y, 64, 654)
