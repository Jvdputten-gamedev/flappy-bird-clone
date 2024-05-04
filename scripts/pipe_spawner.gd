extends Node

@export var timer: Timer
@export var pipes_scene: PackedScene

# Called when the node enters the scene tree for the first time.
func _ready():
	timer.timeout.connect(spawn)


func spawn():
	var pipes = pipes_scene.instantiate()
	add_child(pipes)
	pipes.global_position.x = 1000
	
	print("spawning pipe")
