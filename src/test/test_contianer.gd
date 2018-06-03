extends PanelContainer

const json = preload('res://src/utils/json.gd')
onready var testEq = preload('res://src/equipment.gd').new()
onready var EqTree = preload('res://src/ui/tree_equipment_element.gd')
const testJson = 'res://raw/equipment/testeq.json'

func _ready():
	var tree = EqTree.new()
	self.add_child(tree)
	testEq.LoadBlueprint(json.Load(testJson))
	tree.init(testEq)
