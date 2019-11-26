extends RichTextLabel

func _ready():
	var mytext = "Você desperdiçou "+ str(global.water) +" litros de água."
	self.append_bbcode(mytext)
