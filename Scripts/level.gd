extends Node2D

@export var SPAWN: Node2D
@export var EXIT: Node2D
@export var TERMINATED: Node2D
@export var BallComp: Node2D
#@export var testing: bool:
	#set(value):
		#if value:
			#testing_scene()
			
var game_manager: GameManager = Globals.game_manager
var ball_round: Array[BallObject] = Globals.game.ball_objects.duplicate(true)

var reset_level: bool = false
var max: int = 0


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	max = len(ball_round)-1
	print("... Load Balls ...")
	for ball in ball_round:
		ball.visible = true
		print(ball.name)
		ball.complete = false
		add_child(ball)
		ball.global_position = SPAWN.global_position
		print(ball.global_position)
	print("\n\n")
		

func _input(event: InputEvent) -> void:
	if event.is_action_pressed("exit"):
		get_tree().quit()
		
func reset()->void:
	reset_level = false
	
	for ball in ball_round:
		if not ball.complete:
			print(ball.name + " removed")
			game_manager.ranking[max+1] = ball.BALL_TYPE.duplicate(true)
			ball_round.erase(ball)
			ball.free()
			print(game_manager.ranking)
		else:
			print(ball.name + " moves on")
		
	print("Next Round\n")
	for ball in ball_round:
		ball.visible = true
		print(ball.name)
		ball.complete = false
		ball.global_position = SPAWN.global_position
		print(ball.global_position)
		ball.global_position = SPAWN.global_position
	print("\n\n")
	
	if max == 1:
		for ball in Globals.game.next:
			game_manager.ranking[max] = ball.BALL_TYPE.duplicate(true)
		print(Globals.game_manager.ranking)
		call_deferred("load_home")
	max = len(ball_round)-1
	Globals.game.next.clear()

func load_home():
	get_tree().change_scene_to_file("res://Scenes/UI/score_menu.tscn")

func testing_scene() -> void:
	Globals.game = preload("res://Scenes/Levels/Resource/test.tres")
	Globals.game.load_balls()
