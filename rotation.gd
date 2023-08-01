extends CharacterBody2D

@export var speed = 400
@export var rotation_speed = 1.5

var rotation_direction = 0

func get_input():
	rotation_direction = Input.get_action_strength("ui_right") - Input.get_action_strength("ui_left")
	velocity = transform.x * (Input.get_action_strength("ui_up") - Input.get_action_strength("ui_down")) * speed

func _physics_process(delta):
	get_input()
	rotation += rotation_direction * rotation_speed * delta
	move_and_slide()
