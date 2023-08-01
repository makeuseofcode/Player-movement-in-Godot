extends CharacterBody2D

@export var speed = 300

func _physics_process(delta):
	if Input.is_action_just_pressed("click"):
		var target_position = get_global_mouse_position()
		var direction = (target_position - global_position).normalized()
		velocity = direction * speed * delta
		move_and_collide(velocity)
