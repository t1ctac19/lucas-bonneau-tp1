extends Node2D

@onready var SonMonstreBleu = $SonMonstreBleu
@onready var SonMonstreRouge = $SonMonstreRouge
@onready var SonMonstreVert = $SonMonstreVert
@onready var SonMonstreBlanc = $SonMonstreBlanc
@onready var SonMonstreJaune = $SonMonstreJaune
@onready var SonMonstreBrun = $SonMonstreBrun

func _input(_event):
	if Input.is_action_just_pressed("jouer_son_bleu"):
		print("Action détectée !")
		$SonMonstreBleu.play()
		
	if Input.is_action_just_pressed("jouer_son_rouge"):
		print("Action détectée !")
		$SonMonstreRouge.play()
		
	if Input.is_action_just_pressed("jouer_son_vert"):
		print("Action détectée !")
		$SonMonstreVert.play()
		
	if Input.is_action_just_pressed("jouer_son_blanc"):
		print("Action détectée !")
		$SonMonstreBlanc.play()
		
	if Input.is_action_just_pressed("jouer_son_jaune"):
		print("Action détectée !")
		$SonMonstreJaune.play()
		
	if Input.is_action_just_pressed("jouer_son_brun"):
		print("Action détectée !")
		$SonMonstreBrun.play()
