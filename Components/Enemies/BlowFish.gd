extends KinematicBody2D

func _on_BlowFish_body_entered(body):
	if body.name == "Submarine" || body.name == "Submarine2":
		Global.lifes -= 1
		get_tree().reload_current_scene()
		# get_tree().change_scene("res://Screens/GameOver/game_over.tscn")
