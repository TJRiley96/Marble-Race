class_name Game extends Resource

@export_category("Settings")
@export var max_balls: int = 8
@export var min_balls: int = 2


@export_category("Content")
@export var balls: Array[Ball]

var elminated: Array[BallObject]
var next: Array[BallObject]
var init: bool = false
var use_max: bool = true

var ball_objects: Array[BallObject]
func load_balls():
	if not init:
		init = true
		for ball in balls:
			var temp = BallObject.new()
			temp.BALL_TYPE = ball
			temp.load_ball()
			ball_objects.append(temp)
		max_balls = len(ball_objects)
	
