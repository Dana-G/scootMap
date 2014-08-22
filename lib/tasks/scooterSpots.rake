namespace :scooterSpot do

require 'thread'
require 'csv'


        desc "import csv file"
        task :import_csv_file => :environment do

            CSV.foreach("public/scooterParking.csv",  :headers => true) do |row|
                ParkingSpot.create!(row.to_hash)
                puts "I imported it!"
            end
        end

    end


#   task :task_one: :environment do

#     CSV.foreach('public/scooterParking1.CSV', :headers => true) do |row|
#       ParkingSpot.create!(row.to_hash)
#     end
#   end

