extends KinematicBody2D
class_name entity

var dir : Vector2;
var speed : float = 100;
var friction : float = 0.95;
var minspeed : float = speed / 4;
var sdir = "right";
var motion : Vector2;
onready var anim = $AnimationPlayer;

func _ready():
	pass

func _process(delta):
	move();
	pass

func move():
	if dir != Vector2.ZERO:
		motion = dir.normalized()*speed;
	elif dir == Vector2.ZERO:
		motion *= 0.9
	motion = move_and_slide(motion, Vector2(0,1));
	pass

func anim_switch(animation):
	var newanim = str(sdir, animation);
	if anim.current_animation != newanim:
		anim.play(newanim)
