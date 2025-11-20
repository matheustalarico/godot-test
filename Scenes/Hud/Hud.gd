extends Control


@onready var color_rect: ColorRect = $ColorRect


var states: Dictionary[String, String] = {
	"null_state": "ffffff",
	"fire_state": "ff0000",
	"water_state": "0000ff",
	"wind_state": "00ff00",
}


func _unhandled_input(event: InputEvent) -> void:
	for state in states:
		if event.is_action_pressed(state):
			color_rect.color = Color(states[state], 0.2)


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
