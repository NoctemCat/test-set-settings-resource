@tool
extends EditorPlugin


func _enter_tree() -> void:
	var test := InputEventKey.new()
	if not ProjectSettings.has_setting("addons/test_bug/var"):
		ProjectSettings.set_setting("addons/test_bug/var", test)

	var property := {
		"name": "addons/test_bug/var",
		"type": TYPE_OBJECT,
		"hint": PROPERTY_HINT_RESOURCE_TYPE,
		"hint_string": "InputEventKey"
	}
	ProjectSettings.add_property_info(property)


func _exit_tree() -> void:
	# Clean-up of the plugin goes here.
	pass
