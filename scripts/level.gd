extends Node2D

@export var enemy_scene: PackedScene

func _on_timer_timeout() -> void:
	var enemy = enemy_scene.instantiate()
	add_child(enemy)
	enemy.global_position.x = randf_range(-500.0, 500.0)
	enemy.global_position.y = randf_range(-300.0, 300.0)
