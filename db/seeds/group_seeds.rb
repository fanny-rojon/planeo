puts "Destroying groups..."
Group.destroy_all

puts "Creating groups..."


group1 = Group.create!(
  name: "Le wagon",
  remote_photo_url: "http://www.w3.org/1999/xlink"
)

group2 = Group.create!(
  name: "Sisters...",
  remote_photo_url: "https://pmcdeadline2.files.wordpress.com/2016/12/stepsisters.png?w=595&h=383&crop=1"
)

group3 = Group.create!(
  name: "Girls Night...",
  remote_photo_url: "https://www.thekingsferry.co.uk/sites/default/files/xmas-party-50-50%20%281%29.jpg"
)
puts "Groups created."
