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
Product.destroy_all
Farmer.destroy_all
ActiveRecord::Base.connection.reset_pk_sequence!('products')
ActiveRecord::Base.connection.reset_pk_sequence!('farmers')


puts "Creating farmers..."
Farmer.create!([
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
])
puts "#{Farmer.count} Farmers created."


puts "Creating products..."
Product.create!([
  {
    name: "Sweet Valley Banana",
    description: "Fresh, sweet bananas grown in the fertile valleys of Mauritius. Perfect for snacks, smoothies, or baking.",
    price: "12.00",
    stock: 10,
    farmer_id: 1
  },
  {
    name: "Cabbage",
    description: "Crisp, fresh cabbage perfect for salads, stir-fries, and traditional Mauritian dishes.",
    price: "32.00",
    stock: 10,
    farmer_id: 1
  },
  {
    name: "Strawberry",
    description: "Juicy, locally grown strawberries. Great for desserts, jams, or eating fresh.",
    price: "25.00",
    stock: 10,
    farmer_id: 1
  },

  {
    name: "Carrot",
    description: "Fresh, crunchy carrots rich in vitamins. Perfect for cooking, juicing, or snacking.",
    price: "17.00",
    stock: 10,
    farmer_id: 1
  },
  {
    name: "Mango",
    description: "Fresh, crunchy carrots rich in vitamins. Perfect for cooking, juicing, or snacking.",
    price: "12.50",
    stock: 10,
    farmer_id: 1
  }
])
puts "#{Product.count} Products created."
