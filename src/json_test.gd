extends Node;

onready var testEq = preload('equipment.gd').new()
onready var testTree = preload('tree_equipment_element.gd').new()
var testJson = '{ "name": "TestEQ", "parts": [ {"name": "TestPart", "type":"test", "count":10 }, {"name": "OtherPart", "type":"othertest", "count":1 }, {"name": "BadPart", "type":"badtest", "count":1 } ] }'

func _ready():
	self.add_child(testTree)
	testEq.LoadBlueprint(testJson)
	print(testEq)
	testTree.init(testEq)