extends Area2D

## Name of your player node in main.tscn.
@export var player_name: String = "CharacterBody2D"

var _finished := false


func _on_body_entered(body: Node2D) -> void:
	if _finished:
		return
	if body.name != player_name:
		return

	_finished = true
	print("YOU WIN!")
	_show_win_text()


func _show_win_text() -> void:
	var layer := CanvasLayer.new()
	add_child(layer)

	var label := Label.new()
	label.text = "YOU WIN!\nPress R to restart"
	label.horizontal_alignment = HORIZONTAL_ALIGNMENT_CENTER
	label.vertical_alignment = VERTICAL_ALIGNMENT_CENTER
	label.add_theme_font_size_override("font_size", 64)
	label.set_anchors_preset(Control.PRESET_FULL_RECT)
	layer.add_child(label)


func _unhandled_input(event: InputEvent) -> void:
	if _finished and event is InputEventKey and event.pressed \
			and not event.echo and event.keycode == KEY_R:
		get_tree().reload_current_scene()
