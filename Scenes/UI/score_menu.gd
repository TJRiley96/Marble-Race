extends Control

@onready var score: VBoxContainer = %Score

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	var rankings = Globals.game_manager.ranking
	for i in len(rankings):
		var num =  i+1
		var ball = rankings[num]
		print(ball)
		var rank: DisplayBall = DisplayBall.new()
		rank.load_data(num, ball)
		score.add_child(rank)
		await get_tree().create_timer(0.5).timeout
		load_score()
	
func _input(event: InputEvent) -> void:
	if event.is_action_pressed("exit"):
		get_tree().quit()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	#load_score()
	pass

func load_home():
	get_tree().change_scene_to_file("res://Scenes/game.tscn")
	
func load_score():
	
		
	await get_tree().create_timer(10.0).timeout
	call_deferred("load_home")
