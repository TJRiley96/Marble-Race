class_name DisplayBall extends HBoxContainer

@export var ball: Ball
@export var Order: Label = Label.new()
@export var PNG: TextureRect = TextureRect.new()
@export var Name: Label = Label.new()

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	set_size(Vector2(1000, 500))
	set_alignment(AlignmentMode.ALIGNMENT_BEGIN)
	set_anchors_preset(Control.PRESET_CENTER)
	


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func load_data(key, ball_data)->void:
	var order_message = str(key) + ": "
	Order.text = order_message
	ball = ball_data
	PNG.texture = ball.texture
	PNG.set_expand_mode(TextureRect.EXPAND_FIT_WIDTH_PROPORTIONAL)
	Name.text = ball.name
	self.add_child(Order)
	self.add_child(PNG)
	self.add_child(Name)
	print(self)
	
	
