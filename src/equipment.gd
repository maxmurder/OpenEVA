# base equipment class
var partDefPath = 'res://raw/partdef.json'; # path to the partdefs file

var blueprint = {}; # stores the blueprint for the part
var parts = {}; # saves the parts as contstructed from the equipment blueprint
var partdefs = {}; # stores the part definitions from partdefs file

var partID = 0;

# load part definitions
func LoadDefs():
	var file = File.new();
	file.open(partDefPath, file.READ);
	partdefs = parse_json(file.get_as_text());
	file.close();

# get part definintion
func GetPartDef(part):
	for item in partdefs:
		if(item['name'] == part['type']):
			return item;

# add parts and sub parts recursively
func AddPart(inPart):
	var id;
	# get the part definition
	var part = GetPartDef(inPart);
	if(part != null):
		# add the part to the part list
		id = "%s%d" % [part['name'], partID]
		partID = partID+1;
		parts[id] = { 
			'name': inPart['name'],
			'type': part['name'],
			'children': []
			}
		# add subparts to the part and child list 
		for subPart in part['parts']:
			# parts shouldnt contain themselves as subparts
			if(subPart['type'] != parts[id]['type']):
				for itr in range(0, inPart['count']):
					# add the sub part
					parts[id]['children'].append(AddPart(subPart));
			else:
				print( 'Warning: part [%s] contians itself as a subpart! Skipping to avoid an infinite recursion' % part['name']);
	return id;

# load equipment from json
func LoadBlueprint(json):
	blueprint = parse_json(json);
	for item in blueprint['parts']:
		for itr in range(0, item['count']):
			AddPart(item);

# class initilizer
func _init():
	LoadDefs();

