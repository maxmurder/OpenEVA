extends Node;

onready var testEq = preload("equipment.gd").new();

var json = '{ "hello": "world"}';

func _ready():
	testEq.Load(json);
	print(testEq.parts);



