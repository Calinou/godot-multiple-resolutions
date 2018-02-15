# Copyright © 2017-2018 Hugo Locurcio and contributors - MIT License
# See `LICENSE.md` included in the source distribution for details.

extends Control

# Label used for displaying the current resolution
onready var Resolution = $Resolution

func _ready():
	get_viewport().connect("size_changed", self, "_viewport_size_changed")
	# Call it once when the scene loads to initialize the resolution text
	_viewport_size_changed()

# Debugging feature: called when the viewport size is changed
# (for displaying the resolution in a corner)
func _viewport_size_changed():
	Resolution.text = str(OS.window_size.x) + "×" + str(OS.window_size.y)
