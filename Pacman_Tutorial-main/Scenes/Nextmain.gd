extends Area2D

@export var next_main_scene: PackedScene

func _ready() -> void:
	body_entered.connect(_on_body_entered)

func _on_body_entered(body: Node) -> void:
	# Change these names if your player node is different
	if body.name == "pacman" or body.is_in_group("pacman"):
		if next_main_scene:
			get_tree().change_scene_to_packed(next_main_scene)
		else:
			print("Next Level Scene is empty! Set it in Inspector.")
