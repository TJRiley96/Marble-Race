extends Area2D

@export var EXIT: Node2D
@export var TopNode: Node2D

@onready var exit_position: Vector2 = EXIT.global_position

func _on_body_entered(body: BallObject) -> void:
	body.global_position = exit_position
	if not body.complete:	
		body.complete = true			
		print(body.name)
		print(body.global_position)
		body.global_position = exit_position
		Globals.game.next.append(body)
	
	#if Globals.game.use_max:
		#if  (Globals.game.max_balls-1)== 1:
			#TopNode.reset()
		#elif (Globals.game.max_balls-1) == len(Globals.game.next):
			#Globals.game.use_max = false
			#TopNode.reset()
	#else:	
	if (TopNode.max) == len(Globals.game.next):
		TopNode.reset()


			
