# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Category.destroy_all
User.destroy_all

education = Category.create(name: "Education")
festival = Category.create(name: "Festival")
fun = Category.create(name: "Fun")
family = Category.create(name: "Family")
psycho = Category.create(name: "Psycho")
music = Category.create(name: "Music")

count = Category.all.length
puts "#{count} Categories were created."

elvis = User.create(email: "elvis@alive.com", password: "fever70")
prince = User.create(email: "prince@alive.com", password: "doves70")

count = User.all.length
puts "#{count} Users were created."

event1 = Event.create(name: "Mindfulness retreat",  description:
"Normcore meh put a bird on it man braid mumblecore, locavore synth swag
kogi helvetica ugh health goth twee raw denim readymade. Freegan yuccie everyday
carry tote bag you probably haven't heard of them godard. Meditation tattooed lumbersexual
street art truffaut pour-over, kale chips pitchfork. Readymade snackwave man bun, photo booth
tilde wolf occupy fashion axe VHS authentic PBR&B typewriter. Vape everyday carry meditation try-hard hammock unicorn.",
location: "Colon 58, 1B, 11100 Cadiz (Spain)", price: 34.48, capacity: 5, includes_food: true, includes_drinks: false,
starts_at: DateTime.new(2018,02,03), ends_at: DateTime.new(2019,05,07), active: true, user: elvis, categories: [psycho, education])

event2 = Event.create(name: "Concert around the globe",  description:
"Normcore meh put a bird on it man braid mumblecore, locavore synth swag
kogi helvetica ugh health goth twee raw denim readymade. Freegan yuccie everyday
carry tote bag you probably haven't heard of them godard. Meditation tattooed lumbersexual
street art truffaut pour-over, kale chips pitchfork. Readymade snackwave man bun, photo booth
tilde wolf occupy fashion axe VHS authentic PBR&B typewriter. Vape everyday carry meditation try-hard hammock unicorn.",
location: "Colon 58, 1B, 11100 Cadiz (Spain)", price: 500.00, capacity: 5, includes_food: true, includes_drinks: false,
starts_at: DateTime.new(2018,02,03), ends_at: DateTime.new(2019,05,07), active: true, user: elvis, categories: [music, festival])

count = Event.all.length
puts "#{count} Events were created."
