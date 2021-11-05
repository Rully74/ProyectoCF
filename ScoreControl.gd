extends Control


func _process(delta):
	if Input.is_action_just_pressed("ui_main_menu"):
			visible = !visible
