extends Node

onready var left_label : Label = get_node("/root/Bong/HUD/LeftScore")
onready var right_label : Label = get_node("/root/Bong/HUD/RightScore")

var left_score := 0
var right_score := 0

func inc_left():
	left_score += 1
	left_label.text = str(left_score)

func inc_right():
	right_score += 1
	right_label.text = str(right_score)
