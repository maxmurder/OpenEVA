extends Node
const json = preload('res://src/utils/json.gd')
const Paths = preload('res://src/utils/paths.gd')
const Inventory = preload('res://src/inventory.gd')

# game manager class set to autoload sigleton

var partdefs = [] # global part definitions
var inventory = Inventory.new()

static func LoadDefs(path):
	var defs = []
	# collect raw part definiton files
	for raw in Paths.ls(path):
		for item in json.Load(raw):
			defs.append(item)
	return defs

func _ready():
	self.partdefs = LoadDefs(Paths.raw_part_path)
	## test
	self.inventory.AddItem(json.Load('res://raw/equipment/testeq.json'))