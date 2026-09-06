extends RigidBody2D


@export var acceleration: float = 10
@export var turning_speed: float = 1

func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta: float) -> void:
	var direction = Input.get_axis("left", "right")
	angular_velocity = direction * turning_speed
	
	var facing_rotation = Vector2.UP.rotated(get_rotation())


	if Input.is_action_pressed("booster"):
		apply_central_impulse(facing_rotation * acceleration * delta)
	print(get_rotation())