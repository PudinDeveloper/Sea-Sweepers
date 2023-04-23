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
