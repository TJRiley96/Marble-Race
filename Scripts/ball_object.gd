class_name BallObject extends RigidBody2D


var complete: bool = false

var BALL_TYPE: Ball

@export var reset: bool = false:
	set(value):
		reset = value
		if Engine.is_editor_hint():
			load_ball()
			
			
var collision_shape: CollisionShape2D = CollisionShape2D.new()
var sprite: Sprite2D = Sprite2D.new()
var circle: CircleShape2D = CircleShape2D.new()


func load_ball() -> void:
	name = BALL_TYPE.name
	
	sprite.texture = BALL_TYPE.texture
	sprite.scale.x = BALL_TYPE.scale
	sprite.scale.y = BALL_TYPE.scale
	sprite.z_index = 5
	sprite.visible = true
	
	circle.radius = 16
	collision_shape.shape = circle
	self.add_child(sprite)
	self.add_child(collision_shape)
	
	physics_material_override = preload("res://Scenes/Objects/ball_physic.tres")
	# Set collison for Area2D detection
	set_collision_layer_value(2, true)
	set_collision_mask_value(2, true)
	
	
	
