const raw_part_path = 'res://raw/part/' # path to raw part definitons
const raw_eqip_path = 'res://raw/eqipment/' # path to raw equipment definitions

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