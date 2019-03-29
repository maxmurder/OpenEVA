extends Node

const widget = preload('res://src/widget.gd')
var widgetInventory = []

func AddItem(Blueprint):
	var eq = widget.new()
	eq.LoadBlueprint(Blueprint)
	widgetInventory.append(eq)
	return eq