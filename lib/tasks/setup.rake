namespace :setup do
  desc "Run required tasks to application works"
  task setup: :environment do
    puts %x(rails setup:create_main_church)
  end

  desc "Create the main church"
  task create_main_church: :environment do
    puts "Create main church [...]"

    Church.create!

    puts "Create main church [OK]"
  end
end
