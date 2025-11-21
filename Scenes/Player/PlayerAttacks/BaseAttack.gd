extends Area2D


class_name BaseAttack


@export var damage: float = 0
@export var attack_type: Constants.AttackType
@export var attack_source: Constants.AttackSource


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func die() -> void:
	queue_free()
