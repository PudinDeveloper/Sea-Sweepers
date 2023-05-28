extends Control

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	if Global.level == 3:
		$VBoxGameOver/RespawnButton.disabled = true
		$VBoxGameOver/RespawnButton.text = "Coming Soon"

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func _on_RespawnButton_pressed():
	Global.respawn()

func _on_MainMenu_pressed():
	get_tree().change_scene("res://Screens/MainMenu/main_menu.tscn")

func _on_ExitGame_pressed():
	get_tree().change_scene("res://Screens/CloseApp/close_app.tscn")
