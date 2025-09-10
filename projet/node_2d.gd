extends Node2D

@onready var SonMonstreBleu = $SonMonstreBleu
@onready var SonMonstreRouge = $SonMonstreRouge
@onready var SonMonstreVert = $SonMonstreVert
@onready var SonMonstreBlanc = $SonMonstreBlanc
@onready var SonMonstreJaune = $SonMonstreJaune
@onready var SonMonstreBrun = $SonMonstreBrun

@onready var AnimationBleu = $Animation_bleu
@onready var AnimationRouge = $Animation_rouge
@onready var AnimationVert = $Animation_vert
@onready var AnimationBlanc = $Animation_blanc
@onready var AnimationJaune = $Animation_jaune
@onready var AnimationBrun = $Animation_brun

func _ready():
	SonMonstreBleu.finished.connect(_on_son_bleu_finished)
	SonMonstreRouge.finished.connect(_on_son_rouge_finished)
	SonMonstreVert.finished.connect(_on_son_vert_finished)
	SonMonstreBlanc.finished.connect(_on_son_blanc_finished)
	SonMonstreJaune.finished.connect(_on_son_jaune_finished)
	SonMonstreBrun.finished.connect(_on_son_brun_finished)

func _input(_event):
	if Input.is_action_just_pressed("jouer_son_bleu"):
		print("Action détectée !")
		$SonMonstreBleu.play()
		get_node("Animation_bleu").play("dance")
		
		
	if Input.is_action_just_pressed("jouer_son_rouge"):
		print("Action détectée !")
		$SonMonstreRouge.play()
		get_node("Animation_rouge").play("dance")
		
	if Input.is_action_just_pressed("jouer_son_vert"):
		print("Action détectée !")
		$SonMonstreVert.play()
		get_node("Animation_vert").play("dance")
		
	if Input.is_action_just_pressed("jouer_son_blanc"):
		print("Action détectée !")
		$SonMonstreBlanc.play()
		get_node("Animation_blanc").play("dance")
		
	if Input.is_action_just_pressed("jouer_son_jaune"):
		print("Action détectée !")
		$SonMonstreJaune.play()
		get_node("Animation_jaune").play("dance")
		
	if Input.is_action_just_pressed("jouer_son_brun"):
		print("Action détectée !")
		$SonMonstreBrun.play()
		get_node("Animation_brun").play("dance")

	
func _on_son_bleu_finished():
	AnimationBleu.stop()

func _on_son_rouge_finished():
	AnimationRouge.stop()

func _on_son_vert_finished():
	AnimationVert.stop()

func _on_son_blanc_finished():
	AnimationBlanc.stop()

func _on_son_jaune_finished():
	AnimationJaune.stop()

func _on_son_brun_finished():
	AnimationBrun.stop()
