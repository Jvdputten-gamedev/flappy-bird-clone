extends RigidBody2D

var jump_strength = 750

func _unhandled_input(event):
	if event.is_action_pressed("Jump"):
		jump()


func jump():
	print("jump")
	apply_impulse(Vector2.UP * jump_strength)


