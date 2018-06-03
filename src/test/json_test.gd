extends Node;

onready var testEq = preload('res://src/equipment.gd').new()
onready var testTree = preload('res://src/ui/tree_equipment_element.gd').new()
var testJson = 'res://raw/equipment/testeq.json'

func _ready():
	self.add_child(testTree)
	testEq.LoadBlueprint(testJson)
	print(testEq)
	testTree.init(testEq)