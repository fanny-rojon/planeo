puts "Destroying events..."
Event.destroy_all


group = Group.find_by(name: "Le wagon")

puts "Creating events..."

Event.create!(
  name: "Formula 1 in Monaco",
  state: "organized",
  address: "Circuit de Monaco",
  photo: "https://motorsport.nextgen-auto.com/IMG/arton116805.jpg",
  group: group
)

Event.create!(
  name: "Real Madrid - Barcelona Game",
  state: "organized",
  address: "Av. de Concha Espina, 1, 28036 Madrid",
  photo: "https://e.rpp-noticias.io/normal/2019/10/23/330433_855747.jpg",
  group: group
)

Event.create!(
  name: "Dinner at La Mamona",
  state: "organized",
  address: "La Mamona, Madrid",
  photo: "http://www.decibeles.com.co/wp-content/uploads/2017/09/mamona.jpg",
  group: group
)
puts "Events created."
