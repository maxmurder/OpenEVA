const json = preload('res://src/utils/json.gd')
# base widget class
var name = '' # name of the part
var texture = ''
var blueprint = {} # stores the blueprint for the part
var parts = {} # saves the parts as contstructed from the widget blueprint

var partID = 0 # part uid 

# get part definintion
func GetPartDef(part):
	for item in game_manager.partdefs:
		if(item['name'] == part['type']):
			return item

# add parts and sub parts recursively
func AddPart(inPart):
	var id
	# get the part definition
	var part = GetPartDef(inPart)
	if(part != null):
		# add the part to the part list
		id = "%s%d" % [part['name'], partID]
		partID = partID+1
		parts[id] = { 
			'name': inPart['name'],
			'type': part['name'],
			'hp': part['hp'],
			'tags': part['tags'],
			'children': []
			}
		# add subparts to the part and child list 
		for subPart in part['parts']:
			# parts shouldnt contain themselves as subparts
			if(subPart['type'] != parts[id]['type']):
				for itr in range(0, subPart['count']):
					# add the sub part
					parts[id]['children'].append(AddPart(subPart))
			else:
				print( 'Warning: part [%s] contians itself as a subpart! Skipping to avoid an infinite recursion' % part['name'])
	return id

# load widget from json
func LoadBlueprint(blueprint):
	if blueprint:
		name = blueprint['name']
		texture = blueprint['texture']
		for item in blueprint['parts']:
			for itr in range(0, item['count']):
				AddPart(item)
	else:
		printerr("could not load null blueprint")

