puts "Destroying events..."
Event.destroy_all


group = Group.first
# user1 = User.first


puts "Creating events..."

event1 = Event.new(
  name: "Formula 1 in Monaco",
  state: "organized",
  address: "Circuit de Monaco",
  group: group
)
# event1.remote_photo_url = "https://motorsport.nextgen-auto.com/IMG/arton116805.jpg",
# event1.organizer = user1
event1.save

event2 = Event.create!(
  name: "Real Madrid - Barcelona Game",
  state: "organized",
  address: "Av. de Concha railsEspina, 1, 28036 Madrid",
  group: group
)
  # event2.remote_photo_url = "https://e.rpp-noticias.io/normal/2019/10/23/330433_855747.jpg",
  # event2.organizer = user1
  event2.save

event3 = Event.create!(
  name: "Dinner at La Mamona",
  state: "organized",
  address: "La Mamona, Madrid",
  group: group
)
  # event3.remote_photo_url = "http://www.decibeles.com.co/wp-content/uploads/2017/09/mamona.jpg",
  # event3.organizer = user1
  event3.save
puts "Events created."
