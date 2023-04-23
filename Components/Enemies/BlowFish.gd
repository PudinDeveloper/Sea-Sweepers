extends KinematicBody2D

func _on_BlowFish_body_entered(body):
	if body.name == "Submarine" || body.name == "Submarine2":
		if !Global.loser:
			Global.lifes -= 1
		body.desaparecerSprite()
		$Boom.play()
		$Boom.connect("finished", self, "_on_Boom_finished")

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


func _on_Boom_finished():
	Global.loser = bool(false)
	Global.trash = int(0)
	get_tree().reload_current_scene()
