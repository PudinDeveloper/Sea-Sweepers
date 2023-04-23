extends Control


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_StartGame_pressed():
	get_tree().change_scene("res://Levels/Level-001/Level-001.tscn")


func _on_ExitGame_pressed():
	get_tree().change_scene("res://Screens/CloseApp/close_app.tscn")


func _on_OnePlayer_pressed():
	Global.singleplayer = bool(true)
	$VBoxGameOver/HBoxContainer/OnePlayer.pressed = true
	$VBoxGameOver/HBoxContainer/TwoPlayer.pressed = false
	# _notPressed()


func _on_TwoPlayer_pressed():
	Global.singleplayer = bool(false)
	$VBoxGameOver/HBoxContainer/OnePlayer.pressed = false
	$VBoxGameOver/HBoxContainer/TwoPlayer.pressed = true
	# _notPressed()
	
func _notPressed():
	$VBoxGameOver/HBoxContainer/OnePlayer.pressed = false
	$VBoxGameOver/HBoxContainer/TwoPlayer.pressed = false
