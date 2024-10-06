extends CharacterBody2D

enum SPEEDS { slow = 5, norm = 10, fast = 20}
@export var speed: SPEEDS = SPEEDS.norm


func get_mouse_pos():
	look_at(get_global_mouse_position())
	# velocity = transform.x * Input.get_axis("down", "up") * speed

func _input(event):
	if event is InputEventMouseButton:
		print(event.position)
		look_at(event.position)

# func _physics_process(delta):
	# get_mouse_pos()
	# move_and_slide()
