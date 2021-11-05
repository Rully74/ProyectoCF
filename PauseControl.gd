extends Control

var canPause = false

func _process(delta):
	var btn_pause = get_tree().get_root().find_node("btn_pause")
	if Input.is_action_just_pressed("ui_accept"):
		visible = !visible
		get_tree().paused = visible
		
	if btn_pause:
		visible = true
		get_tree().paused = true
		
	if visible && Input.is_action_just_pressed("ui_main_menu"):
		SceneChanger.change_scene("res://MainMenu.tscn","fade")
		
		

func _on_Resume_pressed():
	hide()
	get_tree().paused = false


func _on_MainMenu_pressed():
	get_tree().paused = false
	get_tree().quit()
