require_relative 'config/application'
require_relative 'app/controllers/controller'

if ARGV[0] == "list"
  # Go through each of the task, and print it out with the index
  Task.all.each_with_index do |task, index|
    puts "#{index + 1}. #{task.tasktext}"
  end
end

if ARGV[0] == "add"
  newtask = ARGV[(1..-1)]
  # how do i convert an array with multiple elements into a long string
  newstring = newtask.join(" ")
  Task.create(tasktext: newstring, complete: false)
end

if ARGV[0] == "delete"
  deleteindex = ARGV[1].to_i - 1
  Task.all[deleteindex].destroy
  puts "Deleted item #{ARGV[1]} from your TODO list"
end


Task.where(complete: true).each_with_index do |task, index|
  puts "[X] #{index + 1}. #{task.tasktext}"
end