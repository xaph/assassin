require 'yaml'

yaml_file = YAML::load(File.open('tasks.yml'))
yaml_file.each{ |category, tasks|
	puts category
	tasks.each{ |name, pri|
		puts name + "has pri of " + pri
	}
}
