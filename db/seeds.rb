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
    location: "MU, Ave Rosier, Amaury 31401",
    description: "Passionate about sustainable farming, Ravi brings fresh vegetables straight from his fields in Belle Vue every morning.",
    contact_info: "5792 1010"
  },
  {
    name: "Asha",
    location: "Royal Road Plaine Des Roches Riviere Du Rempart MU, 31902",
    description: "Known for her organic herbs and leafy greens, Asha is a trusted grower from Saint Pierre with a love for clean, healthy food.",
    contact_info: "5785 3093"
  },
  {
    name: "Moha",
    location: "VPP9+62G, Shantineketan MU, Road, Roches Noires 31207",
    description: "Based in Flacq, Moha grows bananas, pineapples, and more. His produce is loved for its sweetness and natural ripeness.",
    contact_info: "5726 3238"
  },
  {
    name: "Rani",
    location: "Mare La Chaux, Post de Flacq MU, 31203",
    description: "Rani offers freshly picked guavas and jackfruits, grown without any harmful chemicals.",
    contact_info: "5834 1122"
  },
  {
    name: "Dev",
    location: "Vacoas MU, Plaines Wilhems 74208",
    description: "Dev is known for cultivating high-quality carrots and radishes, supplying nearby villages weekly.",
    contact_info: "5943 2211"
  },
  {
    name: "Farah",
    location: "Bambous MU, Black River 90203",
    description: "Farah specializes in growing fresh coriander, mint, and other herbs using hydroponics.",
    contact_info: "5922 8890"
  },
  {
    name: "Yash",
    location: "Sebastopol, Central Flacq 31301",
    description: "Yash runs a family farm producing organic tomatoes and capsicum for the local market.",
    contact_info: "5899 4455"
  },
  {
    name: "Pooja",
    location: "Union Vale, Grand Port 60302",
    description: "Pooja supplies farm-fresh eggs and seasonal vegetables to nearby schools and households.",
    contact_info: "5748 6677"
  },
  {
    name: "Vikash",
    location: "Chamarel, Black River 90402",
    description: "Vikash cultivates exotic mushrooms and wild herbs in the highland regions of Chamarel.",
    contact_info: "5863 9900"
  },
  {
    name: "Amina",
    location: "Triolet, MU 21301",
    description: "Amina grows chillies, eggplants, and okra using sustainable and water-efficient methods.",
    contact_info: "5988 7654"
  },
  {
    name: "Nita",
    location: "Valetta Road, Moka MU, 80808",
    description: "Nita is a dedicated horticulturist from Moka who specializes in cultivating organic vegetables with care and precision.",
    contact_info: "5768 2041"
  },
  {
    name: "Jay",
    location: "Route Royale, La Laura-Malenga MU, 81402",
    description: "Jay is a second-generation farmer known for his flavorful fruits and traditional farming methods. He brings vibrant produce to local homes year-round.",
    contact_info: "5802 9173"
  }
])
puts "#{Farmer.count} Farmers created."


puts "Creating products..."
Product.create!([
  {
    name: "Sweet Valley Banana",
    description: "Grown in lush valleys, these bananas are naturally sweet and perfect for smoothies, snacking, or baking.",
    price: "12.00",
    stock: 10,
    farmer_id: 1
  },
  {
    name: "Cabbage",
    description: "A crisp, leafy vegetable ideal for stir-fries, pickling, or a crunchy salad base.",
    price: "32.00",
    stock: 10,
    farmer_id: 2
  },
  {
    name: "Strawberry",
    description: "Vibrant red strawberries harvested at peak ripeness, great for desserts or a fresh snack.",
    price: "25.00",
    stock: 10,
    farmer_id: 1
  },
  {
    name: "Carrot",
    description: "Sweet and crunchy, these carrots are packed with beta-carotene and farm-fresh flavor.",
    price: "17.00",
    stock: 10,
    farmer_id: 2
  },
  {
    name: "Mango",
    description: "Tropical and juicy, perfect for eating fresh, blending into lassis, or making chutneys.",
    price: "12.50",
    stock: 10,
    farmer_id: 1
  },
  {
    name: "Lemon",
    description: "Zesty and tangy, these lemons add brightness to any dish or drink.",
    price: "27.23",
    stock: 12,
    farmer_id: 2
  },
  {
    name: "Lychee",
    description: "Sweet, floral lychees that are perfect for snacking or pairing with desserts.",
    price: "25.00",
    stock: 18,
    farmer_id: 1
  },
  {
    name: "Pineapple",
    description: "Golden and juicy, this pineapple brings tropical flavor to your table.",
    price: "13.39",
    stock: 19,
    farmer_id: 2
  },
  {
    name: "Starfruit",
    description: "With its unique shape and tangy taste, starfruit adds flair to your fruit bowls.",
    price: "13.07",
    stock: 8,
    farmer_id: 1
  },
  {
    name: "Orange",
    description: "Citrusy and sweet, these oranges are full of vitamin C and great for juicing.",
    price: "34.51",
    stock: 18,
    farmer_id: 2
  },
  {
    name: "Pomegranate",
    description: "Bursting with ruby-red seeds, perfect for antioxidants and fresh taste.",
    price: "31.09",
    stock: 11,
    farmer_id: 1
  },
  {
    name: "Avocado",
    description: "Creamy and rich, avocados are perfect for toast, salads, or guacamole.",
    price: "17.39",
    stock: 8,
    farmer_id: 2
  },
  {
    name: "Papaya",
    description: "Soft, sweet papayas ideal for breakfast bowls or smoothies.",
    price: "28.58",
    stock: 18,
    farmer_id: 2
  },
  {
    name: "Guava",
    description: "A fragrant fruit with a tropical punch, guava is great eaten fresh or juiced.",
    price: "39.84",
    stock: 11,
    farmer_id: 1
  },
  {
    name: "Apple",
    description: "Crunchy and refreshing, apples make a perfect healthy snack on the go.",
    price: "26.84",
    stock: 21,
    farmer_id: 2
  },
  {
    name: "Coconut",
    description: "Naturally hydrating with creamy flesh, coconuts are a tropical staple.",
    price: "37.93",
    stock: 18,
    farmer_id: 1
  },
  {
    name: "Pear",
    description: "Juicy and smooth, pears pair well with cheese or as a standalone dessert.",
    price: "34.86",
    stock: 17,
    farmer_id: 2
  },
  {
    name: "Passion Fruit",
    description: "Tart and aromatic, passion fruit enhances drinks, desserts, or yoghurts.",
    price: "23.85",
    stock: 12,
    farmer_id: 1
  },
  {
    name: "Zucchini",
    description: "Mild and tender, zucchini is great grilled, sautéed, or spiralized.",
    price: "15.99",
    stock: 22,
    farmer_id: 2
  },
  {
    name: "Sweet Corn",
    description: "Golden kernels of sweetness, great on the cob or in hearty stews.",
    price: "15.36",
    stock: 19,
    farmer_id: 1
  },
  {
    name: "Bell Pepper",
    description: "Colorful and crisp, these peppers add crunch and color to any meal.",
    price: "37.41",
    stock: 18,
    farmer_id: 2
  },
  {
    name: "Beetroot",
    description: "Earthy and nutrient-rich, beetroot is great roasted or pickled.",
    price: "16.81",
    stock: 16,
    farmer_id: 1
  },
  {
    name: "Broccoli",
    description: "Packed with vitamins, broccoli is great steamed, stir-fried, or raw.",
    price: "14.32",
    stock: 25,
    farmer_id: 2
  },
  {
    name: "Green Beans",
    description: "Tender and snappy, green beans work well in sautés or stews.",
    price: "14.56",
    stock: 11,
    farmer_id: 1
  },
  {
    name: "Lettuce",
    description: "Light and refreshing, perfect as the base for your favorite salads.",
    price: "21.65",
    stock: 9,
    farmer_id: 2
  },
  {
    name: "Eggplant",
    description: "Velvety and versatile, eggplant is ideal for curries, grilling, or moussaka.",
    price: "10.63",
    stock: 22,
    farmer_id: 1
  },
  {
    name: "Cauliflower",
    description: "Fluffy florets great for roasting, mashing, or low-carb meals.",
    price: "15.68",
    stock: 10,
    farmer_id: 2
  },
  {
    name: "Pumpkin",
    description: "Naturally sweet and earthy, pumpkin shines in soups, pies, and curries.",
    price: "16.75",
    stock: 21,
    farmer_id: 1
  },
  {
    name: "Spinach",
    description: "Tender leaves packed with iron, perfect for salads or sautéed sides.",
    price: "39.37",
    stock: 24,
    farmer_id: 1
  },
  {
    name: "Chili",
    description: "Hot and punchy, these chilies bring heat to any dish.",
    price: "38.24",
    stock: 16,
    farmer_id: 2
  },
  {
    name: "Cucumber",
    description: "Cool and crunchy, cucumbers are refreshing raw or in pickles.",
    price: "29.84",
    stock: 18,
    farmer_id: 1
  },
  {
    name: "Garlic",
    description: "Aromatic and essential, garlic brings bold flavor to every cuisine.",
    price: "38.58",
    stock: 25,
    farmer_id: 2
  }
])
puts "#{Product.count} Products created."
