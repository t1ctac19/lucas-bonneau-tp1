extends Node2D

@onready var SonMonstreBleu = $SonMonstreBleu

func _input(_event):
	if Input.is_action_just_pressed("jouer_son"):
		print("Action détectée !")
		$SonMonstreBleu.play()
