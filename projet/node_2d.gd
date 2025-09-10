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

var audio_unlocked := false

func _input(event):
	if not audio_unlocked and event.is_pressed():
		AudioServer.set_bus_volume_db(AudioServer.get_bus_index("Master"), 0)
		audio_unlocked = true
		print("Audio HTML5 débloqué !")

	if Input.is_action_just_pressed("jouer_son_bleu"):
		SonMonstreBleu.play()
		AnimationBleu.play("dance")
	if Input.is_action_just_pressed("jouer_son_rouge"):
		SonMonstreRouge.play()
		AnimationRouge.play("dance")
	if Input.is_action_just_pressed("jouer_son_vert"):
		SonMonstreVert.play()
		AnimationVert.play("dance")
	if Input.is_action_just_pressed("jouer_son_blanc"):
		SonMonstreBlanc.play()
		AnimationBlanc.play("dance")
	if Input.is_action_just_pressed("jouer_son_jaune"):
		SonMonstreJaune.play()
		AnimationJaune.play("dance")
	if Input.is_action_just_pressed("jouer_son_brun"):
		SonMonstreBrun.play()
		AnimationBrun.play("dance")

func _on_son_bleu_finished(): AnimationBleu.stop()
func _on_son_rouge_finished(): AnimationRouge.stop()
func _on_son_vert_finished(): AnimationVert.stop()
func _on_son_blanc_finished(): AnimationBlanc.stop()
func _on_son_jaune_finished(): AnimationJaune.stop()
func _on_son_brun_finished(): AnimationBrun.stop()
