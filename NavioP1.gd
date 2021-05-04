extends KinematicBody2D
onready var Caturro = $Caturro
onready var Ondas = $Ondas
onready var Angulo = $Navio/Canhao/Angulo
onready var Canhao = $Navio/Canhao


var velocity = Vector2()
export (int) var speed 

func _ready():
	Caturro.play("Caturro")
	Ondas.play("Ondas")
	Angulo.play("Canhão")
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Button_pressed():
	Angulo.stop(true)
	
	
func start(_direction):
	Canhao.rotation = _direction.angle()
	velocity= _direction * speed

func _disparo_piranhado(tiro, _direction):
	var b = Tiro.instance()
	add_child(b)
	b.start(_direction)
