extends Tree
var widget

func Load(widget):
	self.clear()
	self.init(widget)

# recursively adds item to the tree
func AddPart(part, parent):
	# create the Tree item
	var item = create_item(parent)
	item.set_text(0, widget.parts[part]['name'])
	item.set_metadata(0, part)
	# add the part to the id list
	var ids = [part]
	# recursively add parts and collect the ids
	for subPart in widget.parts[part]['children']:
		for id in AddPart(subPart, item):
			ids.append(id)
	return ids

# generate the tree from json blueprint
func GenerateTree():
	# create the root node
	self.get_root().set_text(0, widget.name)
	var ids = []
	# generate the tree items
	for part in widget.parts.keys():
		# cull subparts from the base nodes
		if not (part in ids):
			# recursively add the part and it's children and collect the ids
			for id in AddPart(part, get_root()):
				ids.append(id)

# initilize the tree
func init(widget):
	# create root node
	self.create_item()
	self.set_hide_root(true)
	self.widget = widget
	GenerateTree()

func on_popup(arrow_clicked):
	print(self.get_edited())
	print(get_custom_popup_rect())
	
func _ready():
	self.connect("custom_popup_edited", self, "on_popup")
