# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end


puts "Cleaning database..."
Restaurant.destroy_all

# 2. Create the instances 🏗️
puts "Creating restaurants..."
Restaurant.create!(name: "Dishoom", address: "7 Boundary St, London E2 7JE", phone_number: "1234-56789", category: "belgian")
puts "Created Dishoom"
Restaurant.create!(name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", phone_number: "678-123456", category: "italian")
puts "Created Pizza East"
Restaurant.create!(name: "Kanaan Berlin", address: "Schliemannstraße 23, Berlin", phone_number: "654-98765", category: "japanese")
puts "Created Kanaan Berlin"
Restaurant.create!(name: "Restaurant Il nuovo Primo", address: "Schönhauser Allee 45, Berlin", phone_number: "876-432166", category: "italian")
puts "Created Restaurant Il nuovo Primo"
Restaurant.create!(name: "Restaurant Sphere", address: "Rue de la Roselle, Paris 43A", phone_number: "0783-123563", category: "chinese")
puts "Restaurant Sphere"

# 3. Display a message 🎉
puts "Finished! Created #{Restaurant.count} restaurants."
