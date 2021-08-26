extends KinematicBody2D

var velocity = Vector2.ZERO
var direction = Vector2.ZERO

func _ready() -> void:
	print("PLAYER READY")
	
func _physics_process(delta: float) -> void:
	if Global.enable_movement:
		if Input.is_action_pressed("ui_right"):
			
			velocity.x = 100
		if Input.is_action_pressed("ui_left"):
			
			velocity.x = -100
	
	if velocity.x > 0:
		$AnimatedSprite.play("walking")
		$AnimatedSprite.flip_h = false
	elif velocity.x < 0:
		$AnimatedSprite.play("walking")
		$AnimatedSprite.flip_h = true
	else:
		$AnimatedSprite.play("idle")
		
	velocity.y += 300 * delta
	
	if Input.is_action_just_pressed("jump") and is_on_floor():
		velocity.y = -145
	
	velocity = move_and_slide(velocity, Vector2.UP)
	
	velocity.x = lerp(velocity.x, 0, 1)
