extends Area2D

@onready var polygon_2d: Polygon2D = $Polygon2D

func _ready() -> void:
	rotation_degrees = randf_range(0.0, 360.0)
	polygon_2d.color.s = 0.5
	polygon_2d.color.h = randf()
	



func _on_body_entered(body: Node2D) -> void:
	if body is RigidBody2D:
		body.queue_free()
		queue_free()
