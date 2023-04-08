extends KinematicBody2D

var speed = 115

func _physics_process(delta):
	var direction = Vector2.ZERO
	
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
		
	move_and_slide(direction * speed)

func _on_DetectorCollision_body_entered(body):
	pass
	#if body.name == "BlowFish":
	#	get_tree().reload_current_scene()
