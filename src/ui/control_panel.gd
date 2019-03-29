extends PanelContainer

onready var container = self.find_node("GridContainer")

func Clear():
	for child in container.get_children():
		container.remove_child(child)
	
func Load(item):
	self.Clear()
	for key in item:
		var label = Label.new()
		label.set_text(key + ": " + str(item[key]) )
		container.add_child(label)