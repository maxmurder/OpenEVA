extends ItemList

onready var PartPanel = get_node("../../PartPanel")

func _ready():
	self.connect("item_selected", self, "on_select_item")
	self.Load()
	
func Load():
	self.clear()
	for item in game_manager.inventory.equipmentInventory:
		self.add_item(item.name)

func on_select_item(index):
	PartPanel.Load(game_manager.inventory.equipmentInventory[index])