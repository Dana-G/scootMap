namespace :my_tasks do
  desc "TODO"
  task task_one: :environment do
    puts "Hello"
  end

  desc "TODO"
  task task_two: :environment do
  end

end
