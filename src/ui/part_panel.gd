extends PanelContainer

const json = preload('res://src/utils/json.gd')
onready var equipTree = preload('res://src/ui/tree_equipment_element.gd').new()

func _ready():
	self.add_child(equipTree)

func Load(Equipment):
	equipTree.clear()
	equipTree.init(Equipment)
