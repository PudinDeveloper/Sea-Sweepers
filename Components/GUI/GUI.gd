extends CanvasLayer

# Called when the node enters the scene tree for the first time.
func _ready():
	$TrashCount.text = str(_beatiful_sign(Global.trash))
	if Global.lifes == 3:
		pass
	if Global.lifes == 2:
		$Life3.queue_free()
	if Global.lifes == 1:
		$Life3.queue_free()
		$Life2.queue_free()
	if Global.lifes > 3 || Global.lifes <= 0:
		if Global.lifes > 3:
			get_tree().quit()
		else:
			get_tree().change_scene("res://Screens/GameOver/game_over.tscn")
	
	var timer = Timer.new()
	# Configura el temporizador para que se repita cada 3 segundos
	timer.wait_time = 1.5
	timer.one_shot = false
	# Conecta la señal timeout del temporizador a la función _on_Timer_timeout
	timer.connect("timeout", self, "_on_Timer_timeout")
	# Agrega el temporizador al árbol de nodos
	add_child(timer)
	# Inicia el temporizador
	timer.start()

func _on_Timer_timeout():
	# Esta función se llamará cada 3 segundos
	$TrashCount.text = str(_beatiful_sign(Global.trash))
	
func _beatiful_sign(trash_count):
	if trash_count < 10:
		return ("0" + str(Global.trash))
	else:
		return str(Global.trash)


func _on_Button_pressed():
	Global.singleplayer = true
	Global.lifes = 3
	get_tree().change_scene("res://Screens/MainMenu/main_menu.tscn")
