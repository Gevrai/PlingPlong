extends Control

onready var player_score = 0
onready var ennemy_score = 0

func _on_PlayerGoal_body_entered(body):
	if body.get_name() == "Ball":
		ennemy_score += 1
		update_score()

func _on_EnnemyGoal_body_entered(body):
	if body.get_name() == "Ball":
		player_score += 1
		update_score()
	
func update_score():
	$player_score.text = str(player_score)
	$ennemy_score.text = str(ennemy_score)
