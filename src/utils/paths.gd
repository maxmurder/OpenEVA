const raw_part_path = 'res://raw/part/' # path to raw part definitons
const raw_widget_path = 'res://raw/widgets/' # path to raw widget definitions

static func ls(path):
	var files = []
	var dir = Directory.new()
	dir.open(path)
	dir.list_dir_begin()
	while true:
		var file = dir.get_next()
		if file == '':
			break
		elif not file.begins_with('.'):
			files.append(path + file)
	dir.list_dir_end()
	return files