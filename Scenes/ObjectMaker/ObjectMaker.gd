extends Node2D


#const OBJECT_SCENES: Dictionary[Constants.AttackType, PackedScene] = {
	#
#}


func _enter_tree() -> void:
	SignalHub.on_attack.connect(on_attack)


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func on_attack(attack_type: Constants.AttackType, attack_source: Constants.AttackSource, pos: Vector2, orientation: int) -> void:
	pass
