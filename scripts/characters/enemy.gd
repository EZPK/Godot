extends CharacterBody3D

@export var speed := 2.0
var player: Node = null

func _ready():
	player = get_tree().get_root().get_node("Main/Player")

func _physics_process(delta):
	if player:
		var dir = (player.global_transform.origin - global_transform.origin)
		dir.y = 0  # Ignore hauteur
		dir = dir.normalized()
		velocity = dir * speed
		move_and_slide()
