# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

wines = Wine.create([
  {name: 'Pierre Mignon Brut Prestige', year: 1950, description: 'Structured, with aromatic complexity. Finishes with an intense but fine length.', price: 39.00},
  {name: 'Berte & Cordini Carbenet Sauvignon', year: 1960, description: 'This wine has a good display of cedary oak, cigarbox and blackcurrant. Classic varietal characteristics can be found on the palate with flavours of capsicum, good fruit ripeness, and a long finish.', price: 39.50},
  {name: 'Mustela Moscata D\'asti', year: 1890, description: 'Sweet, fresh and floral, this wine will develop after one to two years with underlying ginger undertones and honeyed chestnuts.', price: 40.00},
  {name: 'Radio Boca Tempranillo', year: 1920, description: 'Brilliant dark cherry red with violet hue. Intense rich aromas of sweet strawberries and mature plums and raisins with hints of tobacco, dark chocolate and minerals. Rich and juicy attack on the palate of fresh ripe berry fruits combined with gentle notes of tasted oak and a refreshing acidity and soft velvet tannins. Full bodied wine with a long aftertaste.', price: 29.00},
  {name: 'Montgo Tempranillo', year: 1910, description: 'This delicious Verdejo is a mouth full of big Castilla fruit. Juicy green apple, sweet juicy peach and an exciting hint of citrus peel will have you talking non-stop.', price: 35.00},
  {name: 'Radio Boca Verdelho', year: 1995, description: 'A very intense nose of flowers and minerals. The palate is vibrant, full of flavor, refreshing acidity and finishes long.', price: 29.00},
  {name: 'Rinke Langsurer Bruderberg Terrassen', year: 2014, description: 'The nose is redolent of flowers, mineral and apricots. A touch of cedary oak is detected on the palate with a vibrant acidity.
', price: 88.70}
])

carts = Cart.create([
  {name: 'John Watson', address:'221B Baker Street'}
  ])
