extends Node2D

#load and instance the wall
var wall = preload("res://wall.tscn")

func _process(delta):
	get_input()

#add the wall to the scene
func get_input():
	var place = wall.instance()
	if Input.is_action_just_pressed("place"):
		place.position = $placement.position
		place.rotation_degrees = $placement.rotation_degrees
		add_child(place)


func _on_Button_pressed():
	get_tree().reload_current_scene()
