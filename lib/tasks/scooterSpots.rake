
require 'csv'

CSV.foreach("public/scooterParking.csv",  :headers => true) do |row|
  ParkingSpot.create!(row.to_hash)
end

#   task :task_one: :environment do

#     CSV.foreach('public/scooterParking1.CSV', :headers => true) do |row|
#       ParkingSpot.create!(row.to_hash)
#     end
#   end

# end
