extends Node

var bg_color: Color
@export var background: ColorRect


func _ready():
	set_to_random_color()
	EventBus.on_jump.connect(set_to_random_color)

func set_to_random_color():
	var background_color = Color.from_ok_hsl(randf(), 1, 0.5)
	background.color = background_color 
	EventBus.on_bg_color_change.emit(background_color)
