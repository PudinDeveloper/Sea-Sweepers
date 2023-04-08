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
	get_tree().change_scene("res://Levels/Level-001/Level-001.tscn")


func _on_ExitGame_pressed():
	get_tree().quit()


func _on_MainMenu_pressed():
	get_tree().change_scene("res://Screens/MainMenu/main_menu.tscn")
