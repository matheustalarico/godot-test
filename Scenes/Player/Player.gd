extends CharacterBody2D


const SPEED: float = 300.0
const JUMP_SPEED: float = -550.0
const GRAVITY: float = 1800


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


func _physics_process(delta: float) -> void:
	velocity.y += GRAVITY * delta
	
	var dir: float = Input.get_axis("left", "right")
	velocity.x = dir * SPEED
	
	move_and_slide()
	
	jump()
	shoot()


func jump() -> void:
	if Input.is_action_pressed("jump") and is_on_floor():
		velocity.y = JUMP_SPEED


func shoot() -> void:
	if Input.is_action_just_pressed("attack"):
		pass
