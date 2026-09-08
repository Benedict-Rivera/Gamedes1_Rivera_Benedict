extends CharacterBody2D


var health = 100
var player_name = "Angel"
var can_talk = true
var message = "Wuzzup niga"

func _ready():
	print(player_name, " Has arrived the scene ", health, "HP.")

func take_damage(amount):
		health -= amount
		print("Health is now: ",health)

func _input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton:
		if event.pressed and event.button_index == MOUSE_BUTTON_LEFT:
			if can_talk:
				print(player_name, ": ", message)
