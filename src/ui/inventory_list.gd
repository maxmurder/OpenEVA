extends ItemList

func _ready():
	self.Load()
	
func Load():
	self.clear()
	for item in game_manager.inventory.widgetInventory:
		self.add_item(item.name)