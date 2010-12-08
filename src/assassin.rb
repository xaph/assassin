require 'yaml'

def colorize(text, color_code)
	  "\t#{color_code}#{text}\e[0m"
	  end

def red(text); colorize(text, "\e[31m"); end
def green(text); colorize(text, "\e[32m"); end
def blue(text); colorize(text, "\e[34m"); end
def yellow(text); colorize(text, "\e[33m"); end

yaml_file = YAML::load(File.open('tasks.yml'))
yaml_file.each{ |category, tasks|
	puts category
	tasks.each{ |name, pri|
		if pri == "low"
			puts green(name) 
		elsif pri == "high"
			puts red(name)
		elsif pri == "normal"
			puts yellow(name)
		end
	}
}
