extends Node2D


#sets the position of the node to the global mouse position every frame.
func _process(delta):
	self.position = get_global_mouse_position()

#called everytime the engine detects user input.
func _input(event):
	if event.is_action_just_pressed("ui_left"):
		self.rotation_degrees -= 90
	if event.is_action_just_pressed("ui_right"):
		self.rotation_degrees += 90
