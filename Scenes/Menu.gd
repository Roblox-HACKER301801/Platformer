extends Control


func _ready():
	$VBoxContainer/Start.grab_focus()


func _on_Start_pressed():
	get_tree().change_scene("res://Scenes/World.tscn")




func _on_QuitButton_pressed():
	get_tree().quit()
