extends CanvasLayer

func _ready():

	get_tree().paused = true

func _input(event):
	if event.is_pressed():
		# Débloque l’audio pour HTML5
		if AudioServer.is_audio_output_paused():
			AudioServer.set_audio_output_paused(false)

		# Dépauser le jeu
		get_tree().paused = false

		# Supprime l’écran de démarrage
		queue_free()
