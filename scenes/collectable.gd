extends Area2D




func _on_body_entered(body: Node2D) -> void: 
		queue_free()


func _on_finish_body_entered(body: Node2D) -> void:
	pass # Replace with function body.
