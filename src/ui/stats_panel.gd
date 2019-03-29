extends PanelContainer

onready var eq_name = find_node("Eq_Name")

func _ready():
	eq_name.text = "Hello"
	pass

func Load(item):
	eq_name.text = item.name
	