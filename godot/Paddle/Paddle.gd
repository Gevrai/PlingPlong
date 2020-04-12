extends KinematicBody

const UP = Vector3(0,1,0)

export var mouse_sensitivity: float = 1.0
export var paddle_range: float = 3.0
export var spring_force: float = 3.0

enum State {
	Idle,
	SpringUp,
	SpringDown
}

onready var initial_pos: Vector3 = self.get_translation()

var velocity: Vector3 = Vector3(0,0,0)
var state = State.Idle

func _ready():
	Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED)

func _physics_process(delta):

	var current_pos: Vector3 = get_translation()
	var movement: Vector3

	match state:
		State.SpringUp:
			if current_pos.x > initial_pos.x + paddle_range:
				state = State.SpringDown
			else:
				movement = Vector3(1,0,0)
		State.SpringDown:
			if current_pos.x < initial_pos.x:
				state = State.Idle
			else:
				movement = Vector3(-1,0,0)

	velocity = move_and_slide(movement * spring_force * delta, UP)

func _input(event):

	if event is InputEventMouseMotion:
		var movement: Vector3 = Vector3(0.0, -event.relative.y, event.relative.x)
		velocity = move_and_slide(movement * mouse_sensitivity, UP)

	elif event is InputEventMouseButton:
		if self.state == State.Idle:
			state = State.SpringUp

	elif event.is_action_pressed("ui_cancel"):
		if Input.get_mouse_mode() == Input.MOUSE_MODE_CAPTURED:
			Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)
		else:
			Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED)

	else:
		return

	get_tree().set_input_as_handled()



func _on_EnnemyGoal_body_entered(body):
	pass # Replace with function body.
