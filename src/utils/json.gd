static func Load(path):
	var file = File.new()
	file.open(path, file.READ)
	var json = parse_json(file.get_as_text())
	file.close()
	return json