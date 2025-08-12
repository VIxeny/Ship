extends VBoxContainer

var leaderboard = {999:'Лютый Фермер', 6:"Гоша", 3 :"Маша", 50:"Саня", 34:"Елизавета", 12: "Егор", 101: "Дмитрий Л.", 66 :"Владимир", 20:'Варя'}

var fv = FontVariation.new()

 

func _ready() -> void:
	fv.base_font = load("res://assets/DIGITALPIXELV4-REGULAR.OTF")
	leaderboard[$"../../player".appleCount] = 'Игрок(Ты)'
	var sorted_keys = leaderboard.keys()
	sorted_keys.sort()
	sorted_keys.reverse()
	for i in len(leaderboard):
		var label = Label.new()
		label.text = str(i+1) +'. '+  str(leaderboard[sorted_keys[i]])+' '+str(sorted_keys[i])
		label.add_theme_font_override("font", fv)
		add_child(label)
		
