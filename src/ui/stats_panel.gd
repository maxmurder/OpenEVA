extends PanelContainer

onready var name_label = find_node("widget_name")
onready var cross_section_texture = find_node("widget_texture")

func _ready():
	#name_label.text = ""
	pass

func Load(item):
	name_label.text = item.name
	cross_section_texture.texture = load(item.texture)
	