extends Node2D


func _ready():
	pass

func _process(delta):
	pass
	if Input.is_action_just_pressed("reset"):
		GameStats.reset()
	print(GameStats.get_time())
	$CanvasLayer/Control/Label.text = GameStats.get_time()

	
	#var dir = Input.get_action_strength("right") - Input.get_action_strength("left")
	#rotation_degrees += dir  * 20 * delta
