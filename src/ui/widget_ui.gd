extends MarginContainer

onready var equip_list = self.find_node("EquipList")
onready var part_tree = self.find_node("PartTree")
onready var stats_panel = self.find_node("StatsPanel")
onready var control_panel = self.find_node("ControlPanel")

var selected_widget
var selected_part

func _ready():
	equip_list.connect("item_selected", self, "on_equip_select")
	part_tree.connect("item_selected", self, "on_part_select")
	pass

func on_equip_select(index):
	control_panel.Clear()
	selected_widget = game_manager.inventory.widgetInventory[index]
	stats_panel.Load(selected_widget)
	part_tree.Load(selected_widget)

func on_part_select():
	selected_part = selected_widget.parts[part_tree.get_selected().get_metadata(0)]
	control_panel.Load(selected_part)
	