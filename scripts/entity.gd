extends KinematicBody2D
class_name entity

var dir : Vector2;
var speed : float = 15;
var friction : float = 0.9;
var minspeed : float = speed / 4;

func _ready():
	pass

func _process(delta):
	move();
	pass

func move():
	var motion : Vector2 = dir*speed;
	dir *= friction;
	motion = move_and_slide(motion, Vector2(0,1));
	pass
