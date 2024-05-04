extends Node

@export var timer: Timer
@export var pipes_scene: PackedScene

# Called when the node enters the scene tree for the first time.
func _ready():
	timer.timeout.connect(spawn)
	EventBus.on_jump.connect(change_color)


func spawn():
	var pipes = pipes_scene.instantiate()
	pipes.add_to_group("pipe")
	add_child(pipes)
	pipes.global_position.x = 1000


func change_color():
	print("change color")
	for pipe in get_tree().get_nodes_in_group("pipe"):
		var new_color = Color.from_ok_hsl(randf(), 1, 0.5)
		pipe.change_color(new_color)
