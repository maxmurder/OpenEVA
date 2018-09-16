extends Node

const Equipment = preload('res://src/equipment.gd')
var equipmentInventory = []

func AddItem(Blueprint):
	var eq = Equipment.new()
	eq.LoadBlueprint(Blueprint)
	equipmentInventory.append(eq)
	return eq