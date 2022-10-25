extends Node2D

func _ready():
	$AnimationPlayerButton.play("ButtonUp")
	$AnimationPlayer.play("DoorClosed")
	



func _on_Area2D_body_entered(body):
	if body.is_in_group("Player"):
		SoundPlayer.play_sound_effect("beep")
		$AnimationPlayerButton.play("ButtonDown")
		$AnimationPlayer.play("DoorOpen") # Replace with function body.
