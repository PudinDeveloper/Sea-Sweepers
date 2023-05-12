extends Control


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_RespawnButton_pressed():
	Global.lifes = 3
	Global.respawn()


func _on_ExitGame_pressed():
	get_tree().change_scene("res://Screens/CloseApp/close_app.tscn")


func _on_MainMenu_pressed():
	Global.lifes = 3
	get_tree().change_scene("res://Screens/MainMenu/main_menu.tscn")
