extends KinematicBody

func _physics_process(_delta):
	var ball: RigidBody = get_node("../Ball")
	if ball != null:
		var ball_pos = ball.get_translation()
		var paddle_pos = self.get_translation()
		self.set_translation(Vector3(paddle_pos.x, ball_pos.y, ball_pos.z))
