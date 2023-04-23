extends KinematicBody2D

var speed = 115

func _physics_process(delta):
	var direction = Vector2.ZERO
	
	if !Global.loser:
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
		
	move_and_slide(direction * speed)
	
func _ready():
	if Global.singleplayer:
		queue_free()

func desaparecerSprite():
	Global.loser = bool(true)
	$Sprite.queue_free()
	$CollisionPolygon2D.queue_free()
	$DetectorCollision.queue_free()
