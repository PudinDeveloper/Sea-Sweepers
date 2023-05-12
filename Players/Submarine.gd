extends KinematicBody2D

var speed = 115

func _physics_process(delta):
	var direction = Vector2.ZERO
	
	if !Global.loser:
		if Input.is_action_pressed("ui_up"):
			direction.y -= 1
			
		if Input.is_action_pressed("ui_down"):
			direction.y += 1
		
		if Input.is_action_pressed("ui_right"):
			direction.x += 1
			$Sprite.flip_h = false
			
		if Input.is_action_pressed("ui_left"):
			direction.x -= 1
			$Sprite.flip_h = true
		
		if Global.singleplayer && !_antiSpeed():
			if Input.is_action_pressed("w_up"):
				direction.y -= 1
			
			if Input.is_action_pressed("s_down"):
				direction.y += 1
			
			if Input.is_action_pressed("d_right"):
				direction.x += 1
				$Sprite.flip_h = false
				
			if Input.is_action_pressed("a_left"):
				direction.x -= 1
				$Sprite.flip_h = true			
			
		if Input.is_action_pressed("ui_esc"):
			Global.trash = 0
			_exitMainMenu()
		
	move_and_slide(direction * speed)

func desaparecerSprite():
	Global.loser = bool(true)
	$Sprite.queue_free()
	$CollisionPolygon2D.queue_free()
	$DetectorCollision.queue_free()
	
func _exitMainMenu():
	get_tree().change_scene("res://Screens/MainMenu/main_menu.tscn")

func _antiSpeed():
	if Input.is_action_pressed("ui_up"):
		return true
	if Input.is_action_pressed("ui_down"):
		return true
	if Input.is_action_pressed("ui_right"):
		return true
	if Input.is_action_pressed("ui_left"):
		return true
	return false
