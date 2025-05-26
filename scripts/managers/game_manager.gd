extends Node

var gold := 0

func _ready():
	_start_gold_timer()

func _start_gold_timer():
	get_tree().create_timer(2.0).connect("timeout", Callable(self, "_add_gold"))

func _add_gold():
	gold += 5
	print("Gold: %d" % gold)
	_start_gold_timer()
