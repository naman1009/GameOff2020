extends "res://scripts/entity.gd"
var mouse = get_local_mouse_position();


func _ready():
	pass # Replace with function body.



func _process(delta):
	control();
	set_sdir();
	move();
	pass

func control():
	mouse = get_local_mouse_position();
	if Input.is_action_pressed("left"):
		dir.x = -1
		
	elif Input.is_action_pressed("right"):
		dir.x = 1
	else:
		dir.x = 0;
	if $game2.flip_h == false:
		$game2.rotate(get_angle_to(mouse-$game2.position));
	else:
		$game2.rotate(get_angle_to(-mouse-$game2.position));

func set_sdir():
	if dir == Vector2.ZERO:
		anim_switch("idle");
	else:
		anim_switch("walk");
		pass
	match dir.normalized().x:
		1.0:
			sdir = "right"
		-1.0:
			sdir = "left"

