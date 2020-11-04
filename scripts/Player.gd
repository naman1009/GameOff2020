extends "res://scripts/entity.gd"


var a = 2
var b = "text"


func _ready():
	pass # Replace with function body.



func _process(delta):
	control();
	move();
	pass

func control():
	if Input.is_action_pressed("left"):
		dir.x = lerp(-minspeed, -speed, 0.2);
	elif Input.is_action_pressed("right"):
		dir.x = lerp(minspeed, speed, 0.2);


