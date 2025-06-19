# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
puts "Seeding farmers..."

farmers = [
  {
    name: "Ravi",
    location: "Belle Vue",
    description: "Passionate about sustainable farming, Ravi brings fresh vegetables straight from his fields in Belle Vue every morning.",
    contact_info: "5792 1010"
  },
  {
    name: "Asha",
    location: "Flacq",
    description: "Known for her organic herbs and leafy greens, Asha is a trusted grower from Saint Pierre with a love for clean, healthy food.",
    contact_info: "5785 3093"
  },
  {
    name: "Moha",
    location: "Curepipe",
    description: "Based in Flacq, Moha grows bananas, pineapples, and more. His produce is loved for its sweetness and natural ripeness.",
    contact_info: "5726 3238"
  }
]

Puts "Farmers seeded."
