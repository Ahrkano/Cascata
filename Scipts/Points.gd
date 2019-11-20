extends CanvasLayer

func _enter_tree():
	$MarginContainer/HBoxContainer/Label.text = str(global.water)
	
func update_score(value):
    $MarginContainer/HBoxContainer/Label.text = str(value)