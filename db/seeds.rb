# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
require "open-uri"

puts "Cleaning database..."
Product.destroy_all
Farmer.destroy_all
# ActiveRecord::Base.connection.reset_pk_sequence!('products')
# ActiveRecord::Base.connection.reset_pk_sequence!('farmers')


puts "Creating farmers..."


ravi = Farmer.create!(
  name: "Ravi",
  location: "MU, Ave Rosier, Amaury 31401",
  description: "Passionate about sustainable farming, Ravi brings fresh vegetables straight from his fields in Belle Vue every morning.",
  contact_info: "5792 1010"
)

photo_ravi = URI.open("https://res.cloudinary.com/draltripq/image/upload/v1750926470/ravi_w39fyr.jpg")
ravi.image.attach(io: photo_ravi, filename: 'ravi.jpg', content_type: 'image/jpeg')


asha = Farmer.create!(
  name: "Asha",
  location: "Royal Road Plaine Des Roches Riviere Du Rempart MU, 31902",
  description: "Known for her organic herbs and leafy greens, Asha is a trusted grower from Saint Pierre with a love for clean, healthy food.",
  contact_info: "5785 3093"
)
photo_asha = URI.open("https://res.cloudinary.com/draltripq/image/upload/v1750926461/asha_yd6nks.jpg")
asha.image.attach(io: photo_asha, filename: 'asha.jpg', content_type: 'image/jpeg')


moha = Farmer.create!(
  name: "Moha",
  location: "VPP9+62G, Shantineketan MU, Road, Roches Noires 31207",
  description: "Based in Flacq, Moha grows bananas, pineapples, and more. His produce is loved for its sweetness and natural ripeness.",
  contact_info: "5726 3238"
)
photo_moha = URI.open("https://res.cloudinary.com/draltripq/image/upload/v1750926466/moha_u7bvn1.jpg")
moha.image.attach(io: photo_moha, filename: 'moha.jpg', content_type: 'image/jpeg')


rani = Farmer.create!(
  name: "Rani",
  location: "Mare La Chaux, Post de Flacq MU, 31203",
  description: "Rani offers freshly picked guavas and jackfruits, grown without any harmful chemicals.",
  contact_info: "5834 1122"
)
photo_rani = URI.open("https://res.cloudinary.com/draltripq/image/upload/v1750926469/rani_hmv24t.jpg")
rani.image.attach(io: photo_rani, filename: 'rani.jpg', content_type: 'image/jpeg')


dev = Farmer.create!(
  name: "Dev",
  location: "Vacoas MU, Plaines Wilhems 74208",
  description: "Dev is known for cultivating high-quality carrots and radishes, supplying nearby villages weekly.",
  contact_info: "5943 2211"
)
photo_dev = URI.open("https://res.cloudinary.com/draltripq/image/upload/v1750926462/dev_dcghe0.jpg")
dev.image.attach(io: photo_dev, filename: 'dev.jpg', content_type: 'image/jpeg')


farah = Farmer.create!(
  name: "Farah",
  location: "Bambous MU, Black River 90203",
  description: "Farah specializes in growing fresh coriander, mint, and other herbs using hydroponics.",
  contact_info: "5922 8890"
)
photo_farah = URI.open("https://res.cloudinary.com/draltripq/image/upload/v1750926465/farah_jpnolk.jpg")
farah.image.attach(io: photo_farah, filename: 'farah.jpg', content_type: 'image/jpeg')


yash = Farmer.create!(
  name: "Yash",
  location: "Sebastopol, Central Flacq 31301",
  description: "Yash runs a family farm producing organic tomatoes and capsicum for the local market.",
  contact_info: "5899 4455"
)
photo_yash = URI.open("https://res.cloudinary.com/draltripq/image/upload/v1750926475/yash_rwk2zq.jpg")
yash.image.attach(io: photo_yash, filename: 'yash.jpg', content_type: 'image/jpeg')


pooja = Farmer.create!(
  name: "Celine",
  location: "Union Vale, Grand Port 60302",
  description: "Celine supplies farm-fresh eggs and seasonal vegetables to nearby schools and households.",
  contact_info: "5748 6677"
)
photo_pooja = URI.open("https://res.cloudinary.com/draltripq/image/upload/v1750926462/celine_gjzjhl.jpg")
pooja.image.attach(io: photo_pooja, filename: 'pooja.jpg', content_type: 'image/jpeg')


vikash = Farmer.create!(
  name: "Vikash",
  location: "Chamarel, Black River 90402",
  description: "Vikash cultivates exotic mushrooms and wild herbs in the highland regions of Chamarel.",
  contact_info: "5863 9900"
)
photo_vikash = URI.open("https://res.cloudinary.com/draltripq/image/upload/v1750926473/vikash_cvzfwm.jpg")
vikash.image.attach(io: photo_vikash, filename: 'vikash.jpg', content_type: 'image/jpeg')


amina = Farmer.create!(
  name: "Amina",
  location: "Triolet, MU 21301",
  description: "Amina grows chillies, eggplants, and okra using sustainable and water-efficient methods.",
  contact_info: "5988 7654"
)
photo_amina = URI.open("https://res.cloudinary.com/draltripq/image/upload/v1750926460/amina_bbumeo.jpg")
amina.image.attach(io: photo_amina, filename: 'amina.jpg', content_type: 'image/jpeg')


nita = Farmer.create!(
  name: "Nita",
  location: "Valetta Road, Moka MU, 80808",
  description: "Nita is a dedicated horticulturist from Moka who specializes in cultivating organic vegetables with care and precision.",
  contact_info: "5768 2041"
)
photo_nita = URI.open("https://res.cloudinary.com/draltripq/image/upload/v1750926468/nita_j4imqf.jpg")
nita.image.attach(io: photo_nita, filename: 'nita.jpg', content_type: 'image/jpeg')


jay = Farmer.create!(
  name: "Jay",
  location: "Route Royale, La Laura-Malenga MU, 81402",
  description: "Jay is a second-generation farmer known for his flavorful fruits and traditional farming methods.",
  contact_info: "5802 9173"
)
photo_jay = URI.open("https://res.cloudinary.com/draltripq/image/upload/v1750926464/jay_f78grw.jpg")
jay.image.attach(io: photo_jay, filename: 'jay.jpg', content_type: 'image/jpeg')

puts "#{Farmer.count} Farmers created."


puts "Creating products..."
puts "Creating products for farmers..."
banana = Product.create!(
  name: "Banana",
  description: "Grown in lush valleys, these bananas are naturally sweet and perfect for smoothies, snacking, or baking.",
  price: "12.00",
  stock: 10,
  farmer: ravi
)
photo_banana = URI.open("https://res.cloudinary.com/draltripq/image/upload/v1750947823/banana_cvx4fk.jpg")
banana.photo.attach(io: photo_banana, filename: 'banana.jpg', content_type: 'image/jpeg')

puts "Created item #{banana.name} with id #{banana.id} for farmer #{banana.farmer.name}"

cabbage = Product.create!(
  name: "Cabbage",
  description: "A crisp, leafy vegetable ideal for stir-fries, pickling, or a crunchy salad base.",
  price: "32.00",
  stock: 10,
  farmer: asha
)
photo_cabbage = URI.open("https://res.cloudinary.com/draltripq/image/upload/v1750947832/cabbage_ulj5lz.jpg")
cabbage.photo.attach(io: photo_cabbage, filename: 'cabbage.jpg', content_type: 'image/jpeg')

puts "Created item #{cabbage.name} with id #{cabbage.id} for farmer #{cabbage.farmer.name}"

strawberry = Product.create!(
  name: "Strawberry",
  description: "Vibrant red strawberries harvested at peak ripeness, great for desserts or a fresh snack.",
  price: "25.00",
  stock: 10,
  farmer: ravi
)
photo_strawberry = URI.open("https://res.cloudinary.com/draltripq/image/upload/v1750947885/strawberry_e0yied.jpg")
strawberry.photo.attach(io: photo_strawberry, filename: 'strawberry.jpg', content_type: 'image/jpeg')

puts "Created item #{strawberry.name} with id #{strawberry.id} for farmer #{strawberry.farmer.name}"

carrot = Product.create!(
  name: "Carrot",
  description: "Sweet and crunchy, these carrots are packed with beta-carotene and farm-fresh flavor.",
  price: "17.00",
  stock: 10,
  farmer: asha
)
photo_carrot = URI.open("https://res.cloudinary.com/draltripq/image/upload/v1750947834/carrot_gupbeq.jpg")
carrot.photo.attach(io: photo_carrot, filename: 'carrot.jpg', content_type: 'image/jpeg')

puts "Created item #{carrot.name} with id #{carrot.id} for farmer #{carrot.farmer.name}"

mango = Product.create!(
  name: "Mango",
  description: "Tropical and juicy, perfect for eating fresh, blending into lassis, or making chutneys.",
  price: "12.50",
  stock: 10,
  farmer: ravi
)
photo_mango = URI.open("https://res.cloudinary.com/draltripq/image/upload/v1750947861/mango_sadpqh.jpg")
mango.photo.attach(io: photo_mango, filename: 'mango.jpg', content_type: 'image/jpeg')

puts "Created item #{mango.name} with id #{mango.id} for farmer #{mango.farmer.name}"

lemon = Product.create!(
  name: "Lemon",
  description: "Zesty and tangy, these lemons add brightness to any dish or drink.",
  price: "27.23",
  stock: 12,
  farmer: asha
)
photo_lemon = URI.open("https://res.cloudinary.com/draltripq/image/upload/v1750947854/lemon_cryg0n.jpg")
lemon.photo.attach(io: photo_lemon, filename: 'lemon.jpg', content_type: 'image/jpeg')

puts "Created item #{lemon.name} with id #{lemon.id} for farmer #{lemon.farmer.name}"

lychee = Product.create!(
  name: "Lychee",
  description: "Sweet, floral lychees that are perfect for snacking or pairing with desserts.",
  price: "25.00",
  stock: 18,
  farmer: ravi
)
photo_lychee = URI.open("https://res.cloudinary.com/draltripq/image/upload/v1750947859/lychee_rd9gdq.jpg")
lychee.photo.attach(io: photo_lychee, filename: 'lychee.jpg', content_type: 'image/jpeg')

puts "Created item #{lychee.name} with id #{lychee.id} for farmer #{lychee.farmer.name}"

pineapple = Product.create!(
  name: "Pineapple",
  description: "Golden and juicy, this pineapple brings tropical flavor to your table.",
  price: "13.39",
  stock: 19,
  farmer: asha
)
photo_pineapple = URI.open("https://res.cloudinary.com/draltripq/image/upload/v1750947877/pineapple_kllxxs.jpg")
pineapple.photo.attach(io: photo_pineapple, filename: 'pineapple.jpg', content_type: 'image/jpeg')

puts "Created item #{pineapple.name} with id #{pineapple.id} for farmer #{pineapple.farmer.name}"

starfruit = Product.create!(
  name: "Starfruit",
  description: "With its unique shape and tangy taste, starfruit adds flair to your fruit bowls.",
  price: "13.07",
  stock: 8,
  farmer: ravi
)
photo_starfruit = URI.open("https://res.cloudinary.com/draltripq/image/upload/v1750947883/starfruit_yflwie.jpg")
starfruit.photo.attach(io: photo_starfruit, filename: 'starfruit.jpg', content_type: 'image/jpeg')

puts "Created item #{starfruit.name} with id #{starfruit.id} for farmer #{starfruit.farmer.name}"

orange = Product.create!(
  name: "Orange",
  description: "Citrusy and sweet, these oranges are full of vitamin C and great for juicing.",
  price: "34.51",
  stock: 18,
  farmer: asha
)
photo_orange = URI.open("https://res.cloudinary.com/draltripq/image/upload/v1750947867/orange_tsgt39.jpg")
orange.photo.attach(io: photo_orange, filename: 'orange.jpg', content_type: 'image/jpeg')

puts "Created item #{orange.name} with id #{orange.id} for farmer #{orange.farmer.name}"

pomegranate = Product.create!(
  name: "Pomegranate",
  description: "Bursting with ruby-red seeds, perfect for antioxidants and fresh taste.",
  price: "31.09",
  stock: 11,
  farmer: ravi
)
photo_pomegranate = URI.open("https://res.cloudinary.com/draltripq/image/upload/v1750947876/pomegranate_vwbo2n.jpg")
pomegranate.photo.attach(io: photo_pomegranate, filename: 'pomegranate.jpg', content_type: 'image/jpeg')

puts "Created item #{pomegranate.name} with id #{pomegranate.id} for farmer #{pomegranate.farmer.name}"

avocado = Product.create!(
  name: "Avocado",
  description: "Creamy and rich, avocados are perfect for toast, salads, or guacamole.",
  price: "17.39",
  stock: 8,
  farmer: asha
)
photo_avocado = URI.open("https://res.cloudinary.com/draltripq/image/upload/v1750947822/avocado_rtgov5.jpg")
avocado.photo.attach(io: photo_avocado, filename: 'avocado.jpg', content_type: 'image/jpeg')

puts "Created item #{avocado.name} with id #{avocado.id} for farmer #{avocado.farmer.name}"

papaya = Product.create!(
  name: "Papaya",
  description: "Soft, sweet papayas ideal for breakfast bowls or smoothies.",
  price: "28.58",
  stock: 18,
  farmer: asha
)
photo_papaya = URI.open("https://res.cloudinary.com/draltripq/image/upload/v1750947865/papaya_ounn5g.jpg")
papaya.photo.attach(io: photo_papaya, filename: 'papaya.jpg', content_type: 'image/jpeg')

puts "Created item #{papaya.name} with id #{papaya.id} for farmer #{papaya.farmer.name}"

guava = Product.create!(
  name: "Guava",
  description: "A fragrant fruit with a tropical punch, guava is great eaten fresh or juiced.",
  price: "39.84",
  stock: 11,
  farmer: ravi
)
photo_guava = URI.open("https://res.cloudinary.com/draltripq/image/upload/v1750947852/guava_ivonqj.jpg")
guava.photo.attach(io: photo_guava, filename: 'guava.jpg', content_type: 'image/jpeg')

puts "Created item #{guava.name} with id #{guava.id} for farmer #{guava.farmer.name}"

apple = Product.create!(
  name: "Apple",
  description: "Crunchy and refreshing, apples make a perfect healthy snack on the go.",
  price: "26.84",
  stock: 21,
  farmer: asha
)
photo_apple = URI.open("https://res.cloudinary.com/draltripq/image/upload/v1750947820/apple_dzxbmk.jpg")
apple.photo.attach(io: photo_apple, filename: 'apple.jpg', content_type: 'image/jpeg')

puts "Created item #{apple.name} with id #{apple.id} for farmer #{apple.farmer.name}"

coconut = Product.create!(
  name: "Coconut",
  description: "Naturally hydrating with creamy flesh, coconuts are a tropical staple.",
  price: "37.93",
  stock: 18,
  farmer: ravi
)
photo_coconut = URI.open("https://res.cloudinary.com/draltripq/image/upload/v1750947843/coconut_xqxi4n.jpg")
coconut.photo.attach(io: photo_coconut, filename: 'coconut.jpg', content_type: 'image/jpeg')

puts "Created item #{coconut.name} with id #{coconut.id} for farmer #{coconut.farmer.name}"

pear = Product.create!(
  name: "Pear",
  description: "Juicy and smooth, pears pair well with cheese or as a standalone dessert.",
  price: "34.86",
  stock: 17,
  farmer: asha
)
photo_pear = URI.open("https://res.cloudinary.com/draltripq/image/upload/v1750947871/pear_sn2uc7.jpg")
pear.photo.attach(io: photo_pear, filename: 'pear.jpg', content_type: 'image/jpeg')

puts "Created item #{pear.name} with id #{pear.id} for farmer #{pear.farmer.name}"

passion_fruit = Product.create!(
  name: "Passion Fruit",
  description: "Tart and aromatic, passion fruit enhances drinks, desserts, or yoghurts.",
  price: "23.85",
  stock: 12,
  farmer: ravi
)
photo_passion_fruit = URI.open("https://res.cloudinary.com/draltripq/image/upload/v1750947868/passion_fruit_l6zpig.jpg")
passion_fruit.photo.attach(io: photo_passion_fruit, filename: 'passion_fruit.jpg', content_type: 'image/jpeg')

puts "Created item #{passion_fruit.name} with id #{passion_fruit.id} for farmer #{passion_fruit.farmer.name}"

zucchini = Product.create!(
  name: "Zucchini",
  description: "Mild and tender, zucchini is great grilled, sautéed, or spiralized.",
  price: "15.99",
  stock: 22,
  farmer: asha
)
photo_zucchini = URI.open("https://res.cloudinary.com/draltripq/image/upload/v1750947888/zucchini_szvwwg.jpg")
zucchini.photo.attach(io: photo_zucchini, filename: 'zucchini.jpg', content_type: 'image/jpeg')

puts "Created item #{zucchini.name} with id #{zucchini.id} for farmer #{zucchini.farmer.name}"

sweet_corn = Product.create!(
  name: "Sweet Corn",
  description: "Golden kernels of sweetness, great on the cob or in hearty stews.",
  price: "15.36",
  stock: 19,
  farmer: ravi
)
photo_sweet_corn = URI.open("https://res.cloudinary.com/draltripq/image/upload/v1750949046/sweet_corn_ajptwq.jpg")
sweet_corn.photo.attach(io: photo_sweet_corn, filename: 'sweet_corn.jpg', content_type: 'image/jpeg')

puts "Created item #{sweet_corn.name} with id #{sweet_corn.id} for farmer #{sweet_corn.farmer.name}"

bell_pepper = Product.create!(
  name: "Bell Pepper",
  description: "Colorful and crisp, these peppers add crunch and color to any meal.",
  price: "37.41",
  stock: 18,
  farmer: asha
)
photo_bell_pepper = URI.open("https://res.cloudinary.com/draltripq/image/upload/v1750947827/bell_pepper_z9ac4m.jpg")
bell_pepper.photo.attach(io: photo_bell_pepper, filename: 'bell_pepper.jpg', content_type: 'image/jpeg')

puts "Created item #{bell_pepper.name} with id #{bell_pepper.id} for farmer #{bell_pepper.farmer.name}"

beetroot = Product.create!(
  name: "Beetroot",
  description: "Earthy and nutrient-rich, beetroot is great roasted or pickled.",
  price: "16.81",
  stock: 16,
  farmer: ravi
)
photo_beetroot = URI.open("https://res.cloudinary.com/draltripq/image/upload/v1750947825/beetroot_mllung.jpg")
beetroot.photo.attach(io: photo_beetroot, filename: 'beetroot.jpg', content_type: 'image/jpeg')

puts "Created item #{beetroot.name} with id #{beetroot.id} for farmer #{beetroot.farmer.name}"

broccoli = Product.create!(
  name: "Broccoli",
  description: "Packed with vitamins, broccoli is great steamed, stir-fried, or raw.",
  price: "14.32",
  stock: 25,
  farmer: asha
)
photo_broccoli = URI.open("https://res.cloudinary.com/draltripq/image/upload/v1750947830/broccoli_dv4mxz.jpg")
broccoli.photo.attach(io: photo_broccoli, filename: 'broccoli.jpg', content_type: 'image/jpeg')

puts "Created item #{broccoli.name} with id #{broccoli.id} for farmer #{broccoli.farmer.name}"

green_beans = Product.create!(
  name: "Green Beans",
  description: "Tender and snappy, green beans work well in sautés or stews.",
  price: "14.56",
  stock: 11,
  farmer: ravi
)
photo_green_beans = URI.open("https://res.cloudinary.com/draltripq/image/upload/v1750947849/green_beans_ctmviu.jpg")
green_beans.photo.attach(io: photo_green_beans, filename: 'green_beans.jpg', content_type: 'image/jpeg')

puts "Created item #{green_beans.name} with id #{green_beans.id} for farmer #{green_beans.farmer.name}"

lettuce = Product.create!(
  name: "Lettuce",
  description: "Light and refreshing, perfect as the base for your favorite salads.",
  price: "21.65",
  stock: 9,
  farmer: asha
)
photo_lettuce = URI.open("https://res.cloudinary.com/draltripq/image/upload/v1750947856/lettuce_buyjfc.jpg")
lettuce.photo.attach(io: photo_lettuce, filename: 'lettuce.jpg', content_type: 'image/jpeg')

puts "Created item #{lettuce.name} with id #{lettuce.id} for farmer #{lettuce.farmer.name}"

eggplant = Product.create!(
  name: "Eggplant",
  description: "Velvety and versatile, eggplant is ideal for curries, grilling, or moussaka.",
  price: "10.63",
  stock: 22,
  farmer: ravi
)
photo_eggplant = URI.open("https://res.cloudinary.com/draltripq/image/upload/v1750947845/eggplant_gsjyxv.jpg")
eggplant.photo.attach(io: photo_eggplant, filename: 'eggplant.jpg', content_type: 'image/jpeg')

puts "Created item #{eggplant.name} with id #{eggplant.id} for farmer #{eggplant.farmer.name}"

cauliflower = Product.create!(
  name: "Cauliflower",
  description: "Fluffy florets great for roasting, mashing, or low-carb meals.",
  price: "15.68",
  stock: 10,
  farmer: asha
)
photo_cauliflower = URI.open("https://res.cloudinary.com/draltripq/image/upload/v1750949252/cauliflower_t4h9he.jpg")
cauliflower.photo.attach(io: photo_cauliflower, filename: 'cauliflower.jpg', content_type: 'image/jpeg')

puts "Created item #{cauliflower.name} with id #{cauliflower.id} for farmer #{cauliflower.farmer.name}"

pumpkin = Product.create!(
  name: "Pumpkin",
  description: "Naturally sweet and earthy, pumpkin shines in soups, pies, and curries.",
  price: "16.75",
  stock: 21,
  farmer: ravi
)
photo_pumpkin = URI.open("https://res.cloudinary.com/draltripq/image/upload/v1750947879/pumpkin_umoz9n.jpg")
pumpkin.photo.attach(io: photo_pumpkin, filename: 'pumpkin.jpg', content_type: 'image/jpeg')

puts "Created item #{pumpkin.name} with id #{pumpkin.id} for farmer #{pumpkin.farmer.name}"

spinach = Product.create!(
  name: "Spinach",
  description: "Tender leaves packed with iron, perfect for salads or sautéed sides.",
  price: "39.37",
  stock: 24,
  farmer: ravi
)
photo_spinach = URI.open("https://res.cloudinary.com/draltripq/image/upload/v1750947882/spinach_tklu1l.jpg")
spinach.photo.attach(io: photo_spinach, filename: 'spinach.jpg', content_type: 'image/jpeg')

puts "Created item #{spinach.name} with id #{spinach.id} for farmer #{spinach.farmer.name}"

chili = Product.create!(
  name: "Chili",
  description: "Hot and punchy, these chilies bring heat to any dish.",
  price: "38.24",
  stock: 16,
  farmer: asha
)
photo_chili = URI.open("https://res.cloudinary.com/draltripq/image/upload/v1750947837/chili_mh3qus.jpg")
chili.photo.attach(io: photo_chili, filename: 'chili.jpg', content_type: 'image/jpeg')

puts "Created item #{chili.name} with id #{chili.id} for farmer #{chili.farmer.name}"

cucumber = Product.create!(
  name: "Cucumber",
  description: "Cool and crunchy, cucumbers are refreshing raw or in pickles.",
  price: "29.84",
  stock: 18,
  farmer: ravi
)
photo_cucumber = URI.open("https://res.cloudinary.com/draltripq/image/upload/v1750947842/cucumber_xvbxt2.jpg")
cucumber.photo.attach(io: photo_cucumber, filename: 'cucumber.jpg', content_type: 'image/jpeg')

puts "Created item #{cucumber.name} with id #{cucumber.id} for farmer #{cucumber.farmer.name}"

garlic = Product.create!(
  name: "Garlic",
  description: "Aromatic and essential, garlic brings bold flavor to every cuisine.",
  price: "38.58",
  stock: 25,
  farmer: asha
)
photo_garlic = URI.open("https://res.cloudinary.com/draltripq/image/upload/v1750947848/garlic_q3qj7s.jpg")
garlic.photo.attach(io: photo_garlic, filename: 'garlic.jpg', content_type: 'image/jpeg')

puts "Created item #{garlic.name} with id #{garlic.id} for farmer #{garlic.farmer.name}"


puts "#{Product.count} Products created."
