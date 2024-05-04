extends Node2D

const MOVE_SPEED: float = 200

@export var top_pipe: Area2D
@export var bottom_pipe: Area2D


# Called when the node enters the scene tree for the first time.
func _ready():
	top_pipe.body_entered.connect(_on_pipe_entered)
	bottom_pipe.body_entered.connect(_on_pipe_entered)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	position.x -= delta*MOVE_SPEED


func _on_pipe_entered(body: Node2D):
	print(body)
