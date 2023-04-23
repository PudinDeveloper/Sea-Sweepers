extends CanvasLayer

# Called when the node enters the scene tree for the first time.
func _ready():
	if Global.lifes == 3:
		pass
	if Global.lifes == 2:
		$Life3.queue_free()
	if Global.lifes == 1:
		$Life3.queue_free()
		$Life2.queue_free()
	if Global.lifes > 3 || Global.lifes <= 0:
		get_tree().change_scene("res://Screens/GameOver/game_over.tscn")
	
