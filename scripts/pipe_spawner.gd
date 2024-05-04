extends Node

@export var timer: Timer
@export var pipes_scene: PackedScene

# Called when the node enters the scene tree for the first time.
func _ready():
	timer.timeout.connect(spawn)
	EventBus.on_bg_color_change.connect(change_color)


func spawn():
	var pipes = pipes_scene.instantiate()
	pipes.add_to_group("pipe")
	add_child(pipes)
	pipes.global_position.x = 2000


func change_color(color:Color):
	var contrast_color = Color(1-color.r, 1-color.g, 1-color.b)
	for pipe in get_tree().get_nodes_in_group("pipe"):
		pipe.change_color(contrast_color)
