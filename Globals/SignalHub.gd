extends Node


signal on_attack(attack_type: Constants.AttackType, attack_source: Constants.AttackSource, pos: Vector2, orientation: int)
signal on_world_state_changed(state: String)


func emit_on_attack(attack_type: Constants.AttackType, attack_source: Constants.AttackSource, pos: Vector2, orientation: int) -> void:
	on_attack.emit(attack_type, attack_source, pos, orientation)


func emit_on_world_state_changed(state: Constants.States) -> void:
	on_world_state_changed.emit(state)
