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

puts "Create restaurants..."
Restaurant.create!(name: "Gazzo", address: "Paul-Linke-Ufer", category: "italian", phone_number:"030 00393039")
Restaurant.create!(name: "Sushi Palace", address: "Friedrichstrasse", category: "japanese", phone_number:"030 00404040")
Restaurant.create!(name: "Le Gourmet", address: "Kurfürstendamm", category: "french", phone_number:"030 00505050")
Restaurant.create!(name: "Peking Duck", address: "Alexanderplatz", category: "chinese", phone_number:"030 00606060")
Restaurant.create!(name: "Brussels Bistro", address: "Schönhauser Allee", category: "belgian", phone_number:"030 00707070")

puts "Created #{Restaurant.count} restaurants."

