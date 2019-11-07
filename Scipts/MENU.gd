extends Control

#NOVO JOGO
func _on_Button_pressed():
	return get_tree().change_scene("res://Scenes/levels/Level_01.tscn")

#CONTINUAR
func _on_Button2_pressed():
	return get_tree().change_scene("res://Scenes/HUD.tscn")

#OPCOES
func _on_Button3_pressed():
	return get_tree().change_scene("res://Scenes/HUD.tscn")

#CREDITOS
func _on_Button4_pressed():
	return get_tree().change_scene("res://Scenes/HUD.tscn")

#QUIT
func _on_Button5_pressed():
	return get_tree().quit()
