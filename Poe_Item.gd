extends Reference
class_name Poe_Item

var clip_board_data

var enchants = []

func initialize(data ):
	clip_board_data = data
	var lines = clip_board_data.split("\\n")
	for line in lines:
		if not "(enchant)" in line:
			continue
		enchants.append(line.to_lower())

func has_anointment(anointment):
	for enchant in enchants:
		if anointment.enchant_text in enchant:
			return true
