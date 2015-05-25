require 'faker'
require 'byebug'

class Seed
  def self.run
    5.times do
      fake_task = Task.new
      fake_task.tasktext = Faker::Lorem.sentence
      fake_task.complete = false
      fake_task.save
    end
  end
end

Seed.run