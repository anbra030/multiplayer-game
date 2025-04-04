extends Node

var score = 0
@onready var score_lable: Label = $ScoreLable


func add_point():
	score += 1
	score_lable.text = "You collected " + str(score) + " coins."

func become_host():
	%multiplayerHUD.hide()
	print("become host pressed")
	MultiplayerManager.become_host()


func join_as_player_2():
	%multiplayerHUD.hide()
	print("Join as player 2")
	MultiplayerManager.join_as_player_2()
