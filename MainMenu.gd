extends Node2D



func _process(delta):
	if Input.is_action_just_pressed("ui_accept"):
		SceneChanger.change_scene("res://World.tscn", "fade")
		



func _on_PlayBtn_pressed():
	SceneChanger.change_scene("res://World.tscn", "fade")
