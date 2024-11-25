extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	Globals.game = preload("res://Scenes/Levels/Resource/test.tres").duplicate(true)
	Globals.game_manager = GameManager.new()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _input(event: InputEvent) -> void:
	if event.is_action_pressed("exit"):
		get_tree().quit()
