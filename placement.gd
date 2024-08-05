extends Node2D


#move with the mouse and call get_input
func _process(delta):
	self.position = get_global_mouse_position()
	get_input()
	
func get_input():
	if Input.is_action_just_pressed("ui_left"):
		self.rotation_degrees -= 90
	if Input.is_action_just_pressed("ui_right"):
		self.rotation_degrees += 90
