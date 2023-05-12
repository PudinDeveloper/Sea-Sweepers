extends Node

var level := int(1)
var maxLevel := int(1)
var lifes := int(3)
var first_try := bool(true)
var loser := bool(false)
var trash := int(0)
var singleplayer := bool(true)

func _ready():
	pass

func lifezify():
	if str(level).length() == 1:
		return "00" + str(level)
	if str(level).length() == 2:
		return "0" + str(level)
	if str(level).length() == 3:
		return str(level)
		
func respawn():
	get_tree().change_scene("res://Levels/Level-" + Global.lifezify() + "/Level-" + Global.lifezify() + ".tscn")
