## Photo du prototype du jeu

![photo](medias/photo_prototype.png)


## Version jouable

Mon exportation ne fonctionne pas, mais mon jeu marche assez bien pour le moment


## Son 

Pour le moment le jeu a seulemet la touche "Q" d'attribuer a un son mais lorsque je vais trouver d'autre son qui marche bien avec le jeu ils seront implémenté dans le jeu


## Animation 

Le jeu ne contient aucune animation pour le moment cependant par la suite tous les personnage devraient être animé


## script

### Voici le script

extends Node2D

@onready var SonMonstreBleu = $SonMonstreBleu

func _input(_event):
	if Input.is_action_just_pressed("jouer_son_bleu"):
		print("Action détectée !")
		$SonMonstreBleu.play()
  
  -------------------------------------

  Le script du jeu est assez simple pour le moment puisque ce n'est que du copié collé du script affiché ci-dessus avec comme
  seuls modification les noms de variable

  

