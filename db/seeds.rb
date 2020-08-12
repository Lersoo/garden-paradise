# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Garden.destroy_all

garden_1 = {
  image_url: "https://www.mnhn.fr/sites/mnhn.fr/files/styles/bandeau_home/public/thumbnails/image/p-2011-05387_grandin_1440_850.jpg?itok=Uqz2FGae",
  name: "Look",
  description: 'Beautiful garden',
  surface: 500
}

garden_2 = {
  image_url: "https://www.mnhn.fr/sites/mnhn.fr/files/styles/bandeau/public/thumbnails/image/jardin-des-plantes-jerome-munier_0.jpg?itok=Pt-VoMjV&c=ac4dd1c34ddb82d174e9ecba820a7bcb",
  name: "Watch",
  description: 'Ugly garden',
  surface: 10
}

[garden_1, garden_2].each do |garden|
  Garden.create!(garden)
end

plant_1 = {
  name: 'Rose',
  image_url: "https://images.unsplash.com/photo-1496062031456-07b8f162a322?ixlib=rb-1.2.1&auto=format&fit=crop&w=701&q=80",
}

plant = Plant.new(plant_1)
plant.garden = Garden.all.sample
plant.save!

p "Created plant associated with garden : #{plant.garden.name}"
