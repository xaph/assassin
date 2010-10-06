require 'yaml'
class Task
	def initialize (name, priority = "normal", category = "default")
		@name = name
		@priority = priority
		@category = category
	end

	def details
		puts 'here your first task details'
		puts 'name: ' + @name
		puts 'category: ' + @category
		puts 'priority: ' + @priority
	end

	def save
		todo_item = { @category => { 
										@name => @priority 
		} }
		todo_file = File.open('tasks.yml', 'w')
		todo_file.puts YAML::dump(todo_item)
	end
end
