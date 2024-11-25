class_name GameManager extends Node

@export var MAX_BALLS: int = 8
@export var BALL_DATA: Array[Ball]

var balls_objects = []
const filename: String = "res://Scenes/Levels/Resource/test.tres"

var ranking: Dictionary = {}

func create_balls():
	for ball in BALL_DATA:
		var temp_ball = RigidBall
		temp_ball.BALL_TYPE = ball
		balls_objects.append(temp_ball)
		
func get_game_file() -> Game:
	return preload(filename)
	
