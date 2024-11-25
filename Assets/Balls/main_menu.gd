class_name MainMenu extends Control


@export var Level: Node2D

func _on_start_pressed() -> void:
	Globals.game.load_balls()
	get_tree().change_scene_to_file("res://Scenes/Levels/test_level_2.tscn")

func _on_options_pressed() -> void:
	pass # Replace with function body.


func _on_quit_pressed() -> void:
	get_tree().quit()
