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
	var ball: RigidBody = get_node("../Ball")
	
	# Unbeatable "AI" :)
	movement = ball.get_translation() - self.get_translation()
	movement.x = 0
	
	match state:
		State.SpringUp:
			if abs(current_pos.x - initial_pos.x) > paddle_range:
				state = State.SpringDown
			else:
				movement.x = -1 * spring_force * delta

		State.SpringDown:
			if current_pos.x > initial_pos.x:
				state = State.Idle
			else:
				movement.x = 1 * spring_force * delta

		State.Idle:
			if current_pos.x - ball.get_translation().x < paddle_range * 0.75:
				state = State.SpringUp
	
	move_and_collide(movement)

