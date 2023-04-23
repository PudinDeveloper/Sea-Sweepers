extends KinematicBody2D

func _on_BlowFish_body_entered(body):
	if body.name == "Submarine" || body.name == "Submarine2":
		Global.lifes -= 1
		get_tree().reload_current_scene()
		# get_tree().change_scene("res://Screens/GameOver/game_over.tscn")

var initial_position = Vector2()
var random_offset = Vector2(rand_range(-25, 25), rand_range(-25, 25))
var time_offset = rand_range(0, 25)

func _ready():
	initial_position = position

func _process(delta):
	var time = (OS.get_ticks_msec() / 500.0) + time_offset  # Tiempo actual en segundos
	var x = initial_position.x + cos(time) * 100  # Posición X en el círculo
	var y = initial_position.y + sin(time) * 100  # Posición Y en el círculo
	position = Vector2(x, y)  # Actualiza la posición del enemigo
