extends Tree
var Equipment

# recursively adds item to the tree
func AddPart(part, parent):
	# create the Tree item
	var item = create_item(parent)
	item.set_text(0, Equipment.parts[part]['name'])
	# add the part to the id list
	var ids = [part]
	# recursively add parts and collect the ids
	for subPart in Equipment.parts[part]['children']:
		for id in AddPart(subPart, item):
			ids.append(id)
	return ids

# generate the tree from json blueprint
func GenerateTree():
	# create the root node
	self.get_root().set_text(0, Equipment.name)
	var ids = []
	# generate the tree items
	for part in Equipment.parts.keys():
		# cull subparts from the base nodes
		if not (part in ids):
			# recursively add the part and it's children and collect the ids
			for id in AddPart(part, get_root()):
				ids.append(id)

# initilize the tree
func init(Equipment):
	# create root node
	self.create_item()
	self.set_hide_root(false)
	self.Equipment = Equipment
	GenerateTree()