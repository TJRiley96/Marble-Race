@tool

class_name RigidBall extends RigidBody2D

var complete: bool = false

@export var BALL_TYPE: Ball:
	set(value):
		BALL_TYPE = value
		if Engine.is_editor_hint():
			load_ball()
			
			
@export var reset: bool = false:
	set(value):
		reset = value
		if Engine.is_editor_hint():
			load_ball()
			
			
@onready var collision_shape: CollisionShape2D = %CollisionShape2D
@onready var sprite: Sprite2D = %BallSprite

func _ready() -> void:
	load_ball()
	
	
func load_ball() -> void:
	print("Func run")
	sprite.texture = BALL_TYPE.texture
	sprite.scale.x = BALL_TYPE.scale
	sprite.scale.y = BALL_TYPE.scale
