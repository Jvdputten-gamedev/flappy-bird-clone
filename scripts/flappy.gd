extends RigidBody2D


@export var sprite: Sprite2D

var jump_strength = 750

func _unhandled_input(event):
	if event.is_action_pressed("Jump"):
		jump()


func jump():
	apply_impulse(Vector2.UP * jump_strength)
	EventBus.on_jump.emit()


func change_color(color: Color):
	sprite.modulate = color