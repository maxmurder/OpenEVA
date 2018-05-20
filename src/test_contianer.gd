extends MarginContainer

onready var testEq = preload('equipment.gd').new()
onready var EqTree = preload('tree_equipment_element.gd')
var testJson = '{ "name": "TestEQ", "parts": [ {"name": "TestPart", "type":"test", "count":10 }, {"name": "OtherPart", "type":"othertest", "count":1 }, {"name": "BadPart", "type":"badtest", "count":1 } ] }'

func _ready():
	var tree = EqTree.new()
	self.add_child(tree)
	testEq.LoadBlueprint(testJson)
	tree.init(testEq)
	pass
