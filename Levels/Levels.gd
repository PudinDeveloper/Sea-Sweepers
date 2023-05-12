extends Node2D

# Called when the node enters the scene tree for the first time.
func _ready():
	pass
	
func verificar_contador():
	if Global.trash >= 15:
		_determinateMaxLevel()
		Global.level += 1
		Global.trash = 0
		if Global.level != 3: # Temporal
			Global.respawn()
	pass

func _process(delta):
	verificar_contador()

func _determinateMaxLevel():
	if Global.maxLevel < Global.level:
		Global.maxLevel = int(Global.level)
