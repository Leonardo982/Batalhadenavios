extends Sprite
onready var vidas = 5
onready var cor1 = $coracoes.visible
onready var cor2 = $coracoes2.visible
onready var cor3 = $coracoes3.visible
onready var cor4 = $coracoes4.visible
onready var cor5 = $coracoes5.visible

func _ready():
	if vidas == 5:
		cor1 = true
		cor2 = true
		cor3 = true
		cor4 = true
		cor5 = true
	if vidas == 4:
		cor1 = true
		cor2 = true
		cor3 = true
		cor4 = true
		cor5 = false
	if vidas == 3:
		cor1 = true
		cor2 = true
		cor3 = true
		cor4 = false
		cor5 = false
	if vidas == 2:
		cor1 = true
		cor2 = true
		cor3 = false
		cor4 = false
		cor5 = false
	if vidas == 1:
		cor1 = true
		cor2 = false
		cor3 = false
		cor4 = false
		cor5 = false



func _on_Button_pressed():
	hide()
	pass # Replace with function body.
