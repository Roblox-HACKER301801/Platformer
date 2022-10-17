extends Node2D

var door_open

func _ready():
	$AnimationPlayer.play("ButtonUp")
	$AnimationPlayer.play("DoorClosed")
	door_open = false

func open_door():
	if not door_open:
		$AnimationPlayer.play("DoorOpen")
		door_open = true

func _on_Area2D_body_entered(body):
	if body.is_in_group("Player"):
		$AnimationPlayer.play("ButtonDown")
		open_door()

func _on_Area2D_body_exited(body):
	$AnimationPlayer.play("ButtonUp")
