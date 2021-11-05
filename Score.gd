extends Label
var highscore = 0
const SAVE_FILE_PATH = "user://savedata.save"

func _process(delta):
	if Input.is_action_just_pressed("ui_main_menu"):
			load_highscore()

func setHighScore(newHighscore):
	text = str(newHighscore)

func load_highscore():
	var save_data = File.new()
	if save_data.file_exists(SAVE_FILE_PATH):
		save_data.open(SAVE_FILE_PATH, File.READ)
		highscore = save_data.get_var()
		save_data.close()
		setHighScore(highscore)
