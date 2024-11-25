extends Area2D

@export var SPAWN: Node2D
# Called when the node enters the scene tree for the first time.

func _on_body_exited(body: BallObject) -> void:
	
	if not body.complete:
		body.global_position = SPAWN.global_position
		print(body.name)
		print(body.global_position)
		body.global_position = SPAWN.global_position
