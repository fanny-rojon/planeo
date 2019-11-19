puts "Destroying groups..."
Group.destroy_all

puts "Creating groups..."


group1 = Group.new(
  name: "Le wagon",
)
  group1.remote_photo_url = "https://archive.org/services/img/github.com-lewagon-dotfiles_-_2019-01-08_18-23-29"
  group1.save

group2 = Group.new(
  name: "Sisters...",
)
  group2.remote_photo_url = "https://pmcdeadline2.files.wordpress.com/2016/12/stepsisters.png?w=595&h=383&crop=1"
  group2.save
group3 = Group.new(
  name: "Girls Night...",
)
  group3.remote_photo_url = "https://www.thekingsferry.co.uk/sites/default/files/xmas-party-50-50%20%281%29.jpg"
  group3.save
puts "Groups newd."
