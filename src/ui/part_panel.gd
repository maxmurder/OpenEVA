extends PanelContainer

onready var equipTree = preload('res://src/ui/tree_widget_element.gd').new()

func Load(widget):
	equipTree.clear()
	equipTree.init(widget)
