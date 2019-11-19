puts "Destroying groups..."
Group.destroy_all

puts "Creating groups..."


Group.create!(
  name: "Le wagon",
  photo: "http://www.w3.org/1999/xlink"
)

Group.create!(
  name: "Sisters...",
  photo: "https://pmcdeadline2.files.wordpress.com/2016/12/stepsisters.png?w=595&h=383&crop=1"
)

Group.create!(
  name: "Girls Night...",
  photo: "https://www.thekingsferry.co.uk/sites/default/files/xmas-party-50-50%20%281%29.jpg"
)
puts "Groups created."
