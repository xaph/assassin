require '/home/xaph/workspace/assassin/src/task.rb'
puts 'enter a name for your task'
name = gets.chomp
tmp_task = Task.new(name)
tmp_task.details
tmp_task.save
