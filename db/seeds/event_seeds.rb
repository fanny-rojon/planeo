puts "Destroying events..."
Event.destroy_all


group = Group.find_by(name: "Le wagon")
user1 = User.find(1)

puts "Creating events..."

event1 = Event.new(
  name: "Formula 1 in Monaco",
  state: "organized",
  address: "Circuit de Monaco",
  remote_photo_url: "https://motorsport.nextgen-auto.com/IMG/arton116805.jpg",
  group: group
)
event.organizer = user1
event.save!

event2 = Event.create!(
  name: "Real Madrid - Barcelona Game",
  state: "organized",
  address: "Av. de Concha Espina, 1, 28036 Madrid",
  remote_photo_url: "https://e.rpp-noticias.io/normal/2019/10/23/330433_855747.jpg",
  group: group
)

event3 = Event.create!(
  name: "Dinner at La Mamona",
  state: "organized",
  address: "La Mamona, Madrid",
  remote_photo_url: "http://www.decibeles.com.co/wp-content/uploads/2017/09/mamona.jpg",
  group: group
)
puts "Events created."
