extends RigidBody

onready var initial_pos: Vector3 = get_translation()

func _on_PlayerGoal_body_entered(body):
	if body == self:
		set_translation(initial_pos)
		set_linear_velocity(Vector3(0,0,0))


func _on_EnnemyGoal_body_entered(body):
	if body == self:
		set_linear_velocity(Vector3(0,0,0))
		var pos = initial_pos
		pos.x = -pos.x
		set_translation(pos)
